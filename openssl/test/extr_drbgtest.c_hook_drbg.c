
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int get_entropy; TYPE_1__* drbg; } ;
struct TYPE_8__ {int get_entropy; } ;
typedef TYPE_1__ RAND_DRBG ;
typedef TYPE_2__ HOOK_CTX ;


 int RAND_DRBG_set_ex_data (TYPE_1__*,int ,TYPE_2__*) ;
 int app_data_index ;
 int get_entropy_hook ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void hook_drbg(RAND_DRBG *drbg, HOOK_CTX *ctx)
{
    memset(ctx, 0, sizeof(*ctx));
    ctx->drbg = drbg;
    ctx->get_entropy = drbg->get_entropy;
    drbg->get_entropy = get_entropy_hook;
    RAND_DRBG_set_ex_data(drbg, app_data_index, ctx);
}
