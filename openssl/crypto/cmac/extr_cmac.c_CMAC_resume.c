
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nlast_block; int tbl; int cctx; } ;
typedef TYPE_1__ CMAC_CTX ;


 int EVP_EncryptInit_ex (int ,int *,int *,int *,int ) ;

int CMAC_resume(CMAC_CTX *ctx)
{
    if (ctx->nlast_block == -1)
        return 0;







    return EVP_EncryptInit_ex(ctx->cctx, ((void*)0), ((void*)0), ((void*)0), ctx->tbl);
}
