
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int length; int data; } ;
struct TYPE_12__ {TYPE_1__* pmeth; } ;
struct TYPE_11__ {scalar_t__ type; int ctx; } ;
struct TYPE_10__ {int flags; } ;
typedef int OSSL_PARAM ;
typedef TYPE_2__ MAC_PKEY_CTX ;
typedef TYPE_3__ EVP_PKEY_CTX ;
typedef int EVP_MD_CTX ;
typedef TYPE_4__ ASN1_OCTET_STRING ;


 int EVP_MAC_CTX_mac (int ) ;
 int EVP_MAC_CTX_set_params (int ,int *) ;
 int EVP_MAC_is_a (int ,int ) ;
 int EVP_MD_CTX_FLAG_NO_INIT ;
 int EVP_MD_CTX_set_flags (int *,int ) ;
 int EVP_MD_CTX_set_update_fn (int *,int ) ;
 int EVP_MD_CTX_test_flags (int *,int ) ;
 int EVP_PKEY_CTX_get0_pkey (TYPE_3__*) ;
 TYPE_2__* EVP_PKEY_CTX_get_data (TYPE_3__*) ;
 int EVP_PKEY_FLAG_SIGCTX_CUSTOM ;
 TYPE_4__* EVP_PKEY_get0 (int ) ;
 int EVP_PKEY_id (int ) ;
 scalar_t__ MAC_TYPE_RAW ;
 int OBJ_nid2sn (int ) ;
 int OSSL_MAC_PARAM_FLAGS ;
 int OSSL_MAC_PARAM_KEY ;
 int OSSL_PARAM_construct_end () ;
 int OSSL_PARAM_construct_int (int ,int*) ;
 int OSSL_PARAM_construct_octet_string (int ,int ,int ) ;
 int int_update ;

__attribute__((used)) static int pkey_mac_signctx_init(EVP_PKEY_CTX *ctx, EVP_MD_CTX *mctx)
{
    MAC_PKEY_CTX *hctx = EVP_PKEY_CTX_get_data(ctx);
    ASN1_OCTET_STRING *key = ((void*)0);
    int rv = 1;
    int set_key =
        hctx->type == MAC_TYPE_RAW
        && (ctx->pmeth->flags & EVP_PKEY_FLAG_SIGCTX_CUSTOM) != 0;

    if (set_key) {
        if (!EVP_MAC_is_a(EVP_MAC_CTX_mac(hctx->ctx),
                          OBJ_nid2sn(EVP_PKEY_id(EVP_PKEY_CTX_get0_pkey(ctx)))))
            return 0;
        key = EVP_PKEY_get0(EVP_PKEY_CTX_get0_pkey(ctx));
        if (key == ((void*)0))
            return 0;
    }

    EVP_MD_CTX_set_flags(mctx, EVP_MD_CTX_FLAG_NO_INIT);
    EVP_MD_CTX_set_update_fn(mctx, int_update);


    {
        OSSL_PARAM params[3];
        size_t params_n = 0;
        int flags = EVP_MD_CTX_test_flags(mctx, ~EVP_MD_CTX_FLAG_NO_INIT);


        params[params_n++] =
            OSSL_PARAM_construct_int(OSSL_MAC_PARAM_FLAGS, &flags);
        if (set_key)
            params[params_n++] =
                OSSL_PARAM_construct_octet_string(OSSL_MAC_PARAM_KEY,
                                                  key->data, key->length);
        params[params_n++] = OSSL_PARAM_construct_end();
        rv = EVP_MAC_CTX_set_params(hctx->ctx, params);
    }
    return rv;
}
