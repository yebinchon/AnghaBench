
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_init_lib () ;
 int tls_init_lib () ;

void
init_ssl_lib(void)
{
    tls_init_lib();

    crypto_init_lib();
}
