
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* dsa; } ;
struct TYPE_8__ {TYPE_1__ pkey; } ;
struct TYPE_7__ {int g; int q; int p; } ;
typedef TYPE_3__ EVP_PKEY ;


 scalar_t__ BN_cmp (int ,int ) ;

__attribute__((used)) static int dsa_cmp_parameters(const EVP_PKEY *a, const EVP_PKEY *b)
{
    if (BN_cmp(a->pkey.dsa->p, b->pkey.dsa->p) ||
        BN_cmp(a->pkey.dsa->q, b->pkey.dsa->q) ||
        BN_cmp(a->pkey.dsa->g, b->pkey.dsa->g))
        return 0;
    else
        return 1;
}
