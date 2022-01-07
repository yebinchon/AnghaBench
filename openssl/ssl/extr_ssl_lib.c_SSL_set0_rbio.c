
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * rbio; } ;
typedef TYPE_1__ SSL ;
typedef int BIO ;


 int BIO_free_all (int *) ;

void SSL_set0_rbio(SSL *s, BIO *rbio)
{
    BIO_free_all(s->rbio);
    s->rbio = rbio;
}
