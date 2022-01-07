
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int mbedtls_x509_crt ;


 int mbedtls_x509_crt_free (int *) ;
 int mbedtls_x509_crt_init (int *) ;
 int mbedtls_x509_crt_parse (int *,unsigned char const*,size_t) ;
 int mbedtls_x509_crt_verify (int *,int *,int *,int *,int *,int *,int *) ;
 int os_printf (char*) ;

int mbedtls_x509_test(int verbose, char *ca_crt, size_t ca_crt_len, char *cli_crt, size_t cli_crt_len)
{
    ((void) verbose);
    return( 0 );

}
