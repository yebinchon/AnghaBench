
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* data; TYPE_1__* pmeth; } ;
struct TYPE_8__ {int * kctx; } ;
struct TYPE_7__ {int pkey_id; } ;
typedef TYPE_2__ EVP_PKEY_KDF_CTX ;
typedef TYPE_3__ EVP_PKEY_CTX ;
typedef int EVP_KDF_CTX ;
typedef int EVP_KDF ;


 int * EVP_KDF_CTX_new (int *) ;
 int * EVP_KDF_fetch (int *,char const*,int *) ;
 int EVP_KDF_free (int *) ;
 char* OBJ_nid2sn (int ) ;
 int OPENSSL_free (TYPE_2__*) ;
 TYPE_2__* OPENSSL_zalloc (int) ;

__attribute__((used)) static int pkey_kdf_init(EVP_PKEY_CTX *ctx)
{
    EVP_PKEY_KDF_CTX *pkctx;
    EVP_KDF_CTX *kctx;
    const char *kdf_name = OBJ_nid2sn(ctx->pmeth->pkey_id);
    EVP_KDF *kdf;

    pkctx = OPENSSL_zalloc(sizeof(*pkctx));
    if (pkctx == ((void*)0))
        return 0;

    kdf = EVP_KDF_fetch(((void*)0), kdf_name, ((void*)0));
    kctx = EVP_KDF_CTX_new(kdf);
    EVP_KDF_free(kdf);
    if (kctx == ((void*)0)) {
        OPENSSL_free(pkctx);
        return 0;
    }

    pkctx->kctx = kctx;
    ctx->data = pkctx;
    return 1;
}
