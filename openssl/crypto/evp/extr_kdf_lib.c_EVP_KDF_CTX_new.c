
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int (* freectx ) (int *) ;int prov; int * (* newctx ) (int ) ;} ;
struct TYPE_8__ {TYPE_2__* meth; int * data; } ;
typedef TYPE_1__ EVP_KDF_CTX ;
typedef TYPE_2__ EVP_KDF ;


 int ERR_R_MALLOC_FAILURE ;
 int EVP_F_EVP_KDF_CTX_NEW ;
 int EVP_KDF_up_ref (TYPE_2__*) ;
 int EVPerr (int ,int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int ossl_provider_ctx (int ) ;
 int * stub1 (int ) ;
 int stub2 (int *) ;

EVP_KDF_CTX *EVP_KDF_CTX_new(EVP_KDF *kdf)
{
    EVP_KDF_CTX *ctx = ((void*)0);

    if (kdf == ((void*)0))
        return ((void*)0);

    ctx = OPENSSL_zalloc(sizeof(EVP_KDF_CTX));
    if (ctx == ((void*)0)
        || (ctx->data = kdf->newctx(ossl_provider_ctx(kdf->prov))) == ((void*)0)
        || !EVP_KDF_up_ref(kdf)) {
        EVPerr(EVP_F_EVP_KDF_CTX_NEW, ERR_R_MALLOC_FAILURE);
        if (ctx != ((void*)0))
            kdf->freectx(ctx->data);
        OPENSSL_free(ctx);
        ctx = ((void*)0);
    } else {
        ctx->meth = kdf;
    }
    return ctx;
}
