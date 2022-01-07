
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int loader_ctx; } ;
typedef TYPE_1__ OSSL_STORE_CTX ;


 int OPENSSL_free (TYPE_1__*) ;
 int ossl_store_file_detach_pem_bio_int (int ) ;

int ossl_store_detach_pem_bio(OSSL_STORE_CTX *ctx)
{
    int loader_ret = ossl_store_file_detach_pem_bio_int(ctx->loader_ctx);

    OPENSSL_free(ctx);
    return loader_ret;
}
