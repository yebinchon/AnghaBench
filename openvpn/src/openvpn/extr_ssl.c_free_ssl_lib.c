
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_uninit_lib () ;
 int prng_uninit () ;
 int tls_free_lib () ;

void
free_ssl_lib(void)
{
    crypto_uninit_lib();
    prng_uninit();

    tls_free_lib();
}
