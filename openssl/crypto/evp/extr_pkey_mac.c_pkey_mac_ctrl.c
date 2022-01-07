
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {void* data; int length; } ;
struct TYPE_14__ {int * engine; TYPE_2__* pkey; } ;
struct TYPE_12__ {void* md; int ktmp; } ;
struct TYPE_13__ {int * ctx; TYPE_3__ raw_data; int type; } ;
struct TYPE_10__ {scalar_t__ ptr; } ;
struct TYPE_11__ {TYPE_1__ pkey; } ;
typedef int OSSL_PARAM ;
typedef TYPE_4__ MAC_PKEY_CTX ;
typedef TYPE_5__ EVP_PKEY_CTX ;
typedef int EVP_MAC_CTX ;
typedef TYPE_6__ ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_set (int *,void*,int) ;
 scalar_t__ ENGINE_get_id (int *) ;
 int EVP_CIPHER_nid (void*) ;
 int * EVP_MAC_CTX_dup (int *) ;
 int EVP_MAC_CTX_free (int *) ;
 int EVP_MAC_CTX_get_params (int *,int *) ;
 int EVP_MAC_CTX_set_params (int *,int *) ;
 int EVP_MAC_init (int *) ;
 int EVP_MD_nid (void*) ;





 TYPE_4__* EVP_PKEY_CTX_get_data (TYPE_5__*) ;


 scalar_t__ OBJ_nid2sn (int ) ;
 char* OSSL_MAC_PARAM_CIPHER ;
 char* OSSL_MAC_PARAM_DIGEST ;
 int OSSL_MAC_PARAM_KEY ;
 int OSSL_MAC_PARAM_SIZE ;
 int OSSL_PARAM_END ;
 int OSSL_PARAM_construct_end () ;
 int OSSL_PARAM_construct_octet_string (int ,void*,int) ;
 int OSSL_PARAM_construct_size_t (int ,size_t*) ;
 int OSSL_PARAM_construct_utf8_string (char*,char*,int ) ;

__attribute__((used)) static int pkey_mac_ctrl(EVP_PKEY_CTX *ctx, int type, int p1, void *p2)
{
    MAC_PKEY_CTX *hctx = EVP_PKEY_CTX_get_data(ctx);

    switch (type) {

    case 134:
        switch (hctx->type) {
        case 128:
            return -2;
        case 129:
            {
                OSSL_PARAM params[3];
                size_t params_n = 0;
                char *ciphname = (char *)OBJ_nid2sn(EVP_CIPHER_nid(p2));

                char *engineid = (char *)ENGINE_get_id(ctx->engine);

                params[params_n++] =
                    OSSL_PARAM_construct_utf8_string("engine", engineid, 0);

                params[params_n++] =
                    OSSL_PARAM_construct_utf8_string(OSSL_MAC_PARAM_CIPHER,
                                                     ciphname, 0);
                params[params_n] = OSSL_PARAM_construct_end();

                if (!EVP_MAC_CTX_set_params(hctx->ctx, params)
                    || !EVP_MAC_init(hctx->ctx))
                    return 0;
            }
            break;
        default:

            return 0;
        }
        break;

    case 132:
        switch (hctx->type) {
        case 128:
            hctx->raw_data.md = p2;
            break;
        case 129: {
                EVP_MAC_CTX *new_mac_ctx;

                if (ctx->pkey == ((void*)0))
                    return 0;
                new_mac_ctx = EVP_MAC_CTX_dup((EVP_MAC_CTX *)ctx->pkey
                                              ->pkey.ptr);
                if (new_mac_ctx == ((void*)0))
                    return 0;
                EVP_MAC_CTX_free(hctx->ctx);
                hctx->ctx = new_mac_ctx;
            }
            break;
        default:

            return 0;
        }
        break;

    case 131:
        {
            OSSL_PARAM params[2] = { OSSL_PARAM_END, OSSL_PARAM_END };
            size_t size = (size_t)p1;
            size_t verify = 0;
            params[0] =
                OSSL_PARAM_construct_size_t(OSSL_MAC_PARAM_SIZE, &size);

            if (!EVP_MAC_CTX_set_params(hctx->ctx, params))
                return 0;

            params[0] =
                OSSL_PARAM_construct_size_t(OSSL_MAC_PARAM_SIZE, &verify);

            if (!EVP_MAC_CTX_get_params(hctx->ctx, params))
                return 0;






            if (verify != size)
                return -2;
        }
        break;
    case 130:
        switch (hctx->type) {
        case 128:
            if ((!p2 && p1 > 0) || (p1 < -1))
                return 0;
            if (!ASN1_OCTET_STRING_set(&hctx->raw_data.ktmp, p2, p1))
                return 0;
            break;
        case 129:
            {
                OSSL_PARAM params[2];
                size_t params_n = 0;

                params[params_n++] =
                    OSSL_PARAM_construct_octet_string(OSSL_MAC_PARAM_KEY,
                                                      p2, p1);
                params[params_n] = OSSL_PARAM_construct_end();

                return EVP_MAC_CTX_set_params(hctx->ctx, params);
            }
            break;
        default:

            return 0;
        }
        break;

    case 133:
        switch (hctx->type) {
        case 128:

            if (!EVP_MAC_init(hctx->ctx))
                return 0;
            {
                ASN1_OCTET_STRING *key =
                    (ASN1_OCTET_STRING *)ctx->pkey->pkey.ptr;
                OSSL_PARAM params[4];
                size_t params_n = 0;
                char *mdname =
                    (char *)OBJ_nid2sn(EVP_MD_nid(hctx->raw_data.md));

                char *engineid = ctx->engine == ((void*)0)
                    ? ((void*)0) : (char *)ENGINE_get_id(ctx->engine);

                if (engineid != ((void*)0))
                    params[params_n++] =
                        OSSL_PARAM_construct_utf8_string("engine", engineid, 0);

                params[params_n++] =
                    OSSL_PARAM_construct_utf8_string(OSSL_MAC_PARAM_DIGEST,
                                                     mdname, 0);
                params[params_n++] =
                    OSSL_PARAM_construct_octet_string(OSSL_MAC_PARAM_KEY,
                                                      key->data, key->length);
                params[params_n] = OSSL_PARAM_construct_end();

                return EVP_MAC_CTX_set_params(hctx->ctx, params);
            }
            break;
        case 129:
            return -2;
        default:

            return 0;
        }
        break;

    default:
        return -2;

    }
    return 1;
}
