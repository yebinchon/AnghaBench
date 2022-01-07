
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * g; int * q; int * p; } ;
struct TYPE_5__ {TYPE_3__* dsa; } ;
struct TYPE_6__ {TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef TYPE_3__ DSA ;



__attribute__((used)) static int dsa_missing_parameters(const EVP_PKEY *pkey)
{
    DSA *dsa;
    dsa = pkey->pkey.dsa;
    if (dsa == ((void*)0) || dsa->p == ((void*)0) || dsa->q == ((void*)0) || dsa->g == ((void*)0))
        return 1;
    return 0;
}
