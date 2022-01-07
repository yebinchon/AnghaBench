
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close_port_share () ;
 int free_ssl_lib () ;
 int pkcs11_terminate () ;
 int show_tls_performance_stats () ;

void
uninit_static(void)
{
    free_ssl_lib();
}
