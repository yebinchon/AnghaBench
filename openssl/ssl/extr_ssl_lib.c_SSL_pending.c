
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* method; } ;
struct TYPE_5__ {size_t (* ssl_pending ) (TYPE_2__ const*) ;} ;
typedef TYPE_2__ SSL ;


 size_t INT_MAX ;
 size_t stub1 (TYPE_2__ const*) ;

int SSL_pending(const SSL *s)
{
    size_t pending = s->method->ssl_pending(s);
    return pending < INT_MAX ? (int)pending : INT_MAX;
}
