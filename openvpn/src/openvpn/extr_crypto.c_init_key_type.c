
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_type {int cipher_length; scalar_t__ hmac_length; int digest; int cipher; } ;


 int ASSERT (char const*) ;
 int CLEAR (struct key_type) ;
 int MAX_CIPHER_KEY_LENGTH ;
 int M_FATAL ;
 int M_WARN ;
 scalar_t__ OPENVPN_MAX_CIPHER_BLOCK_SIZE ;
 scalar_t__ OPENVPN_MAX_HMAC_SIZE ;
 scalar_t__ cipher_kt_block_size (int ) ;
 int cipher_kt_get (int ) ;
 int cipher_kt_key_size (int ) ;
 int cipher_kt_mode_aead (int ) ;
 scalar_t__ cipher_kt_mode_cbc (int ) ;
 scalar_t__ cipher_kt_mode_ofb_cfb (int ) ;
 int md_kt_get (char const*) ;
 scalar_t__ md_kt_size (int ) ;
 int msg (int ,char*,...) ;
 scalar_t__ strcmp (char const*,char*) ;
 int translate_cipher_name_from_openvpn (char const*) ;

void
init_key_type(struct key_type *kt, const char *ciphername,
              const char *authname, int keysize, bool tls_mode, bool warn)
{
    bool aead_cipher = 0;

    ASSERT(ciphername);
    ASSERT(authname);

    CLEAR(*kt);
    if (strcmp(ciphername, "none") != 0)
    {
        kt->cipher = cipher_kt_get(translate_cipher_name_from_openvpn(ciphername));
        if (!kt->cipher)
        {
            msg(M_FATAL, "Cipher %s not supported", ciphername);
        }

        kt->cipher_length = cipher_kt_key_size(kt->cipher);
        if (keysize > 0 && keysize <= MAX_CIPHER_KEY_LENGTH)
        {
            kt->cipher_length = keysize;
        }


        aead_cipher = cipher_kt_mode_aead(kt->cipher);
        if (!(cipher_kt_mode_cbc(kt->cipher)
              || (tls_mode && aead_cipher)



              ))
        {
            msg(M_FATAL, "Cipher '%s' mode not supported", ciphername);
        }

        if (OPENVPN_MAX_CIPHER_BLOCK_SIZE < cipher_kt_block_size(kt->cipher))
        {
            msg(M_FATAL, "Cipher '%s' not allowed: block size too big.", ciphername);
        }
    }
    else
    {
        if (warn)
        {
            msg(M_WARN, "******* WARNING *******: '--cipher none' was specified. "
                "This means NO encryption will be performed and tunnelled "
                "data WILL be transmitted in clear text over the network! "
                "PLEASE DO RECONSIDER THIS SETTING!");
        }
    }
    if (strcmp(authname, "none") != 0)
    {
        if (!aead_cipher)
        {
            kt->digest = md_kt_get(authname);
            kt->hmac_length = md_kt_size(kt->digest);

            if (OPENVPN_MAX_HMAC_SIZE < kt->hmac_length)
            {
                msg(M_FATAL, "HMAC '%s' not allowed: digest size too big.", authname);
            }
        }
    }
    else if (!aead_cipher)
    {
        if (warn)
        {
            msg(M_WARN, "******* WARNING *******: '--auth none' was specified. "
                "This means no authentication will be performed on received "
                "packets, meaning you CANNOT trust that the data received by "
                "the remote side have NOT been manipulated. "
                "PLEASE DO RECONSIDER THIS SETTING!");
        }
    }
}
