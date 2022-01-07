
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* name; } ;
typedef TYPE_1__ DSA_METHOD ;


 int OPENSSL_free (TYPE_1__*) ;

void DSA_meth_free(DSA_METHOD *dsam)
{
    if (dsam != ((void*)0)) {
        OPENSSL_free(dsam->name);
        OPENSSL_free(dsam);
    }
}
