
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dane; } ;
typedef int SSL_DANE ;
typedef TYPE_1__ SSL ;



SSL_DANE *SSL_get0_dane(SSL *s)
{
    return &s->dane;
}
