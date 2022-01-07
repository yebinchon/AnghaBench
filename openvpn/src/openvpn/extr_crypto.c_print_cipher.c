
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cipher_kt_t ;


 int cipher_kt_block_size (int const*) ;
 int cipher_kt_key_size (int const*) ;
 int cipher_kt_mode_cbc (int const*) ;
 int cipher_kt_name (int const*) ;
 scalar_t__ cipher_kt_var_key_size (int const*) ;
 int printf (char*,...) ;
 char* translate_cipher_name_to_openvpn (int ) ;

void
print_cipher(const cipher_kt_t *cipher)
{
    const char *var_key_size = cipher_kt_var_key_size(cipher) ?
                               " by default" : "";

    printf("%s  (%d bit key%s, ",
           translate_cipher_name_to_openvpn(cipher_kt_name(cipher)),
           cipher_kt_key_size(cipher) * 8, var_key_size);

    if (cipher_kt_block_size(cipher) == 1)
    {
        printf("stream cipher");
    }
    else
    {
        printf("%d bit block", cipher_kt_block_size(cipher) * 8);
    }

    if (!cipher_kt_mode_cbc(cipher))
    {
        printf(", TLS client/server mode only");
    }

    printf(")\n");
}
