
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* data; } ;
struct TYPE_9__ {TYPE_2__* collected_info; TYPE_1__* collected_seed; int * kctx; } ;
struct TYPE_8__ {int length; int data; } ;
struct TYPE_7__ {int length; int data; } ;
typedef int OSSL_PARAM ;
typedef TYPE_3__ EVP_PKEY_KDF_CTX ;
typedef TYPE_4__ EVP_PKEY_CTX ;
typedef int EVP_KDF_CTX ;


 int EVP_KDF_CTX_set_params (int *,int *) ;
 int EVP_KDF_derive (int *,unsigned char*,size_t) ;
 size_t EVP_KDF_size (int *) ;
 int OSSL_KDF_PARAM_INFO ;
 int OSSL_KDF_PARAM_SEED ;
 int OSSL_PARAM_END ;
 int OSSL_PARAM_construct_octet_string (int ,int ,int ) ;
 size_t SIZE_MAX ;
 int pkey_kdf_free_collected (TYPE_3__*) ;

__attribute__((used)) static int pkey_kdf_derive(EVP_PKEY_CTX *ctx, unsigned char *key,
                           size_t *keylen)
{
    EVP_PKEY_KDF_CTX *pkctx = ctx->data;
    EVP_KDF_CTX *kctx = pkctx->kctx;
    size_t outlen = EVP_KDF_size(kctx);
    int r;

    if (pkctx->collected_seed != ((void*)0)) {
        OSSL_PARAM params[] = { OSSL_PARAM_END, OSSL_PARAM_END };

        params[0] =
            OSSL_PARAM_construct_octet_string(OSSL_KDF_PARAM_SEED,
                                              pkctx->collected_seed->data,
                                              pkctx->collected_seed->length);

        r = EVP_KDF_CTX_set_params(kctx, params);
        pkey_kdf_free_collected(pkctx);
        if (!r)
            return 0;
    }
    if (pkctx->collected_info != ((void*)0)) {
        OSSL_PARAM params[] = { OSSL_PARAM_END, OSSL_PARAM_END };

        params[0] =
            OSSL_PARAM_construct_octet_string(OSSL_KDF_PARAM_INFO,
                                              pkctx->collected_info->data,
                                              pkctx->collected_info->length);

        r = EVP_KDF_CTX_set_params(kctx, params);
        pkey_kdf_free_collected(pkctx);
        if (!r)
            return 0;
    }
    if (outlen == 0 || outlen == SIZE_MAX) {

        if (key == ((void*)0))
            return 0;
    } else {

        *keylen = outlen;
        if (key == ((void*)0))
            return 1;
    }
    return EVP_KDF_derive(kctx, key, *keylen);
}
