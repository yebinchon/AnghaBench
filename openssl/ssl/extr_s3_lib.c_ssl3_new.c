
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* method; } ;
struct TYPE_6__ {int (* ssl_clear ) (TYPE_2__*) ;} ;
typedef TYPE_2__ SSL ;


 int SSL_SRP_CTX_init (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

int ssl3_new(SSL *s)
{

    if (!SSL_SRP_CTX_init(s))
        return 0;


    if (!s->method->ssl_clear(s))
        return 0;

    return 1;
}
