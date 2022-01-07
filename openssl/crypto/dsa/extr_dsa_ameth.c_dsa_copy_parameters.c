
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int dirty_cnt; int * g; int * q; int * p; } ;
struct TYPE_6__ {TYPE_5__* dsa; } ;
struct TYPE_7__ {TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef int BIGNUM ;


 int * BN_dup (int *) ;
 int BN_free (int *) ;
 TYPE_5__* DSA_new () ;

__attribute__((used)) static int dsa_copy_parameters(EVP_PKEY *to, const EVP_PKEY *from)
{
    BIGNUM *a;

    if (to->pkey.dsa == ((void*)0)) {
        to->pkey.dsa = DSA_new();
        if (to->pkey.dsa == ((void*)0))
            return 0;
    }

    if ((a = BN_dup(from->pkey.dsa->p)) == ((void*)0))
        return 0;
    BN_free(to->pkey.dsa->p);
    to->pkey.dsa->p = a;

    if ((a = BN_dup(from->pkey.dsa->q)) == ((void*)0))
        return 0;
    BN_free(to->pkey.dsa->q);
    to->pkey.dsa->q = a;

    if ((a = BN_dup(from->pkey.dsa->g)) == ((void*)0))
        return 0;
    BN_free(to->pkey.dsa->g);
    to->pkey.dsa->g = a;
    to->pkey.dsa->dirty_cnt++;
    return 1;
}
