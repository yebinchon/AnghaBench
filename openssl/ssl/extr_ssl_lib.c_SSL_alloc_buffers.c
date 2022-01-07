
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int ssl3_setup_buffers (int *) ;

int SSL_alloc_buffers(SSL *ssl)
{
    return ssl3_setup_buffers(ssl);
}
