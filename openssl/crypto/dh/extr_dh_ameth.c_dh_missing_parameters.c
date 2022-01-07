
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* dh; } ;
struct TYPE_7__ {TYPE_2__ pkey; } ;
struct TYPE_5__ {int * g; int * p; } ;
typedef TYPE_3__ EVP_PKEY ;



__attribute__((used)) static int dh_missing_parameters(const EVP_PKEY *a)
{
    if (a->pkey.dh == ((void*)0) || a->pkey.dh->p == ((void*)0) || a->pkey.dh->g == ((void*)0))
        return 1;
    return 0;
}
