
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ctx; } ;
typedef int SSL_CTX ;
typedef TYPE_1__ SSL ;



SSL_CTX *SSL_get_SSL_CTX(const SSL *ssl)
{
    return ssl->ctx;
}
