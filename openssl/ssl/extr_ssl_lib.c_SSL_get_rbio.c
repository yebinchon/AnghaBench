
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * rbio; } ;
typedef TYPE_1__ SSL ;
typedef int BIO ;



BIO *SSL_get_rbio(const SSL *s)
{
    return s->rbio;
}
