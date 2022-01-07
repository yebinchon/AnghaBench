
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;
 int show_available_tls_ciphers_list (char const*,char const*,int) ;

void
show_available_tls_ciphers(const char *cipher_list,
                           const char *cipher_list_tls13,
                           const char *tls_cert_profile)
{
    printf("Available TLS Ciphers, listed in order of preference:\n");





    (void) cipher_list_tls13;


    printf("\nFor TLS 1.2 and older (--tls-cipher):\n\n");
    show_available_tls_ciphers_list(cipher_list, tls_cert_profile, 0);

    printf("\n"
           "Be aware that that whether a cipher suite in this list can actually work\n"
           "depends on the specific setup of both peers. See the man page entries of\n"
           "--tls-cipher and --show-tls for more details.\n\n"
           );
}
