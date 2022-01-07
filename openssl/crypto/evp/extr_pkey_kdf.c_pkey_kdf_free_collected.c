
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * collected_info; int * collected_seed; } ;
typedef TYPE_1__ EVP_PKEY_KDF_CTX ;


 int BUF_MEM_free (int *) ;

__attribute__((used)) static void pkey_kdf_free_collected(EVP_PKEY_KDF_CTX *pkctx)
{
    BUF_MEM_free(pkctx->collected_seed);
    pkctx->collected_seed = ((void*)0);
    BUF_MEM_free(pkctx->collected_info);
    pkctx->collected_info = ((void*)0);
}
