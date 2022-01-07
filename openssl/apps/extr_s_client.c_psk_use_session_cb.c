
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_SESSION ;
typedef int SSL_CIPHER ;
typedef int SSL ;
typedef int EVP_MD ;


 int BIO_printf (int ,char*,...) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_hexstr2buf (int ,long*) ;
 int * SSL_CIPHER_find (int *,int ) ;
 int const* SSL_CIPHER_get_handshake_digest (int const*) ;
 int SSL_SESSION_free (int *) ;
 int * SSL_SESSION_get0_cipher (int *) ;
 int * SSL_SESSION_new () ;
 int SSL_SESSION_set1_master_key (int *,unsigned char*,long) ;
 int SSL_SESSION_set_cipher (int *,int const*) ;
 int SSL_SESSION_set_protocol_version (int *,int ) ;
 int SSL_SESSION_up_ref (int *) ;
 int TLS1_3_VERSION ;
 int bio_err ;
 scalar_t__ psk_identity ;
 int psk_key ;
 int * psksess ;
 size_t strlen (scalar_t__) ;
 int tls13_aes128gcmsha256_id ;

__attribute__((used)) static int psk_use_session_cb(SSL *s, const EVP_MD *md,
                              const unsigned char **id, size_t *idlen,
                              SSL_SESSION **sess)
{
    SSL_SESSION *usesess = ((void*)0);
    const SSL_CIPHER *cipher = ((void*)0);

    if (psksess != ((void*)0)) {
        SSL_SESSION_up_ref(psksess);
        usesess = psksess;
    } else {
        long key_len;
        unsigned char *key = OPENSSL_hexstr2buf(psk_key, &key_len);

        if (key == ((void*)0)) {
            BIO_printf(bio_err, "Could not convert PSK key '%s' to buffer\n",
                       psk_key);
            return 0;
        }


        cipher = SSL_CIPHER_find(s, tls13_aes128gcmsha256_id);
        if (cipher == ((void*)0)) {
            BIO_printf(bio_err, "Error finding suitable ciphersuite\n");
            OPENSSL_free(key);
            return 0;
        }

        usesess = SSL_SESSION_new();
        if (usesess == ((void*)0)
                || !SSL_SESSION_set1_master_key(usesess, key, key_len)
                || !SSL_SESSION_set_cipher(usesess, cipher)
                || !SSL_SESSION_set_protocol_version(usesess, TLS1_3_VERSION)) {
            OPENSSL_free(key);
            goto err;
        }
        OPENSSL_free(key);
    }

    cipher = SSL_SESSION_get0_cipher(usesess);
    if (cipher == ((void*)0))
        goto err;

    if (md != ((void*)0) && SSL_CIPHER_get_handshake_digest(cipher) != md) {

        *id = ((void*)0);
        *idlen = 0;
        *sess = ((void*)0);
        SSL_SESSION_free(usesess);
    } else {
        *sess = usesess;
        *id = (unsigned char *)psk_identity;
        *idlen = strlen(psk_identity);
    }

    return 1;

 err:
    SSL_SESSION_free(usesess);
    return 0;
}
