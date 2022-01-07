
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * wbio; int * bbio; } ;
typedef TYPE_1__ SSL ;
typedef int BIO ;


 int * BIO_next (int *) ;

BIO *SSL_get_wbio(const SSL *s)
{
    if (s->bbio != ((void*)0)) {




        return BIO_next(s->bbio);
    }
    return s->wbio;
}
