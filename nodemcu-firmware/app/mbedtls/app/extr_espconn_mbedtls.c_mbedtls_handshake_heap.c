
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
typedef TYPE_1__ mbedtls_ssl_context ;


 int os_printf (char*,int ,int ) ;
 int system_get_free_heap_size () ;

void mbedtls_handshake_heap(mbedtls_ssl_context *ssl)
{
 os_printf("mbedtls_handshake_heap %d %d\n", ssl->state, system_get_free_heap_size());
}
