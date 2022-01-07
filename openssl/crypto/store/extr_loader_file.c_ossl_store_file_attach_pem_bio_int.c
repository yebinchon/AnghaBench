
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * file; } ;
struct TYPE_7__ {TYPE_1__ file; } ;
struct TYPE_8__ {int type; TYPE_2__ _; } ;
typedef TYPE_3__ OSSL_STORE_LOADER_CTX ;
typedef int BIO ;


 int ERR_R_MALLOC_FAILURE ;
 TYPE_3__* OPENSSL_zalloc (int) ;
 int OSSL_STORE_F_OSSL_STORE_FILE_ATTACH_PEM_BIO_INT ;
 int OSSL_STOREerr (int ,int ) ;
 int is_pem ;

OSSL_STORE_LOADER_CTX *ossl_store_file_attach_pem_bio_int(BIO *bp)
{
    OSSL_STORE_LOADER_CTX *ctx = OPENSSL_zalloc(sizeof(*ctx));

    if (ctx == ((void*)0)) {
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_FILE_ATTACH_PEM_BIO_INT,
                      ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    ctx->_.file.file = bp;
    ctx->type = is_pem;

    return ctx;
}
