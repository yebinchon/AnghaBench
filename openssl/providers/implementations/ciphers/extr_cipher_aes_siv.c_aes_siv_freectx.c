
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* hw; } ;
struct TYPE_5__ {int (* cleanup ) (TYPE_2__*) ;} ;
typedef TYPE_2__ PROV_AES_SIV_CTX ;


 int OPENSSL_clear_free (TYPE_2__*,int) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void aes_siv_freectx(void *vctx)
{
    PROV_AES_SIV_CTX *ctx = (PROV_AES_SIV_CTX *)vctx;

    if (ctx != ((void*)0)) {
        ctx->hw->cleanup(ctx);
        OPENSSL_clear_free(ctx, sizeof(*ctx));
    }
}
