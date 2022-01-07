
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int dsa; } ;
struct TYPE_10__ {TYPE_1__ pkey; } ;
struct TYPE_9__ {int * pkey; } ;
typedef TYPE_2__ EVP_PKEY_CTX ;
typedef TYPE_3__ EVP_PKEY ;
typedef int DSA ;


 int DSA_F_PKEY_DSA_KEYGEN ;
 int DSA_R_NO_PARAMETERS_SET ;
 int DSA_generate_key (int ) ;
 int * DSA_new () ;
 int DSAerr (int ,int ) ;
 int EVP_PKEY_assign_DSA (TYPE_3__*,int *) ;
 int EVP_PKEY_copy_parameters (TYPE_3__*,int *) ;

__attribute__((used)) static int pkey_dsa_keygen(EVP_PKEY_CTX *ctx, EVP_PKEY *pkey)
{
    DSA *dsa = ((void*)0);

    if (ctx->pkey == ((void*)0)) {
        DSAerr(DSA_F_PKEY_DSA_KEYGEN, DSA_R_NO_PARAMETERS_SET);
        return 0;
    }
    dsa = DSA_new();
    if (dsa == ((void*)0))
        return 0;
    EVP_PKEY_assign_DSA(pkey, dsa);

    if (!EVP_PKEY_copy_parameters(pkey, ctx->pkey))
        return 0;
    return DSA_generate_key(pkey->pkey.dsa);
}
