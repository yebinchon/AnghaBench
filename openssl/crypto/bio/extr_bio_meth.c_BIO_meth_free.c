
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* name; } ;
typedef TYPE_1__ BIO_METHOD ;


 int OPENSSL_free (TYPE_1__*) ;

void BIO_meth_free(BIO_METHOD *biom)
{
    if (biom != ((void*)0)) {
        OPENSSL_free(biom->name);
        OPENSSL_free(biom);
    }
}
