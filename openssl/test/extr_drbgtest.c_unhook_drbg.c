
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int get_entropy; } ;
struct TYPE_7__ {int ex_data; int get_entropy; } ;
typedef TYPE_1__ RAND_DRBG ;
typedef TYPE_2__ HOOK_CTX ;


 int CRYPTO_EX_INDEX_RAND_DRBG ;
 int CRYPTO_free_ex_data (int ,TYPE_1__*,int *) ;
 TYPE_2__* get_hook_ctx (TYPE_1__*) ;

__attribute__((used)) static void unhook_drbg(RAND_DRBG *drbg)
{
    HOOK_CTX *ctx = get_hook_ctx(drbg);

    drbg->get_entropy = ctx->get_entropy;
    CRYPTO_free_ex_data(CRYPTO_EX_INDEX_RAND_DRBG, drbg, &drbg->ex_data);
}
