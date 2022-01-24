#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {void* data; int length; } ;
struct TYPE_14__ {int /*<<< orphan*/ * engine; TYPE_2__* pkey; } ;
struct TYPE_12__ {void* md; int /*<<< orphan*/  ktmp; } ;
struct TYPE_13__ {int /*<<< orphan*/ * ctx; TYPE_3__ raw_data; int /*<<< orphan*/  type; } ;
struct TYPE_10__ {scalar_t__ ptr; } ;
struct TYPE_11__ {TYPE_1__ pkey; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  TYPE_4__ MAC_PKEY_CTX ;
typedef  TYPE_5__ EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_MAC_CTX ;
typedef  TYPE_6__ ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
#define  EVP_PKEY_CTRL_CIPHER 134 
#define  EVP_PKEY_CTRL_DIGESTINIT 133 
#define  EVP_PKEY_CTRL_MD 132 
#define  EVP_PKEY_CTRL_SET_DIGEST_SIZE 131 
#define  EVP_PKEY_CTRL_SET_MAC_KEY 130 
 TYPE_4__* FUNC9 (TYPE_5__*) ; 
#define  MAC_TYPE_MAC 129 
#define  MAC_TYPE_RAW 128 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 char* OSSL_MAC_PARAM_CIPHER ; 
 char* OSSL_MAC_PARAM_DIGEST ; 
 int /*<<< orphan*/  OSSL_MAC_PARAM_KEY ; 
 int /*<<< orphan*/  OSSL_MAC_PARAM_SIZE ; 
 int /*<<< orphan*/  OSSL_PARAM_END ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(EVP_PKEY_CTX *ctx, int type, int p1, void *p2)
{
    MAC_PKEY_CTX *hctx = FUNC9(ctx);

    switch (type) {

    case EVP_PKEY_CTRL_CIPHER:
        switch (hctx->type) {
        case MAC_TYPE_RAW:
            return -2;       /* The raw types don't support ciphers */
        case MAC_TYPE_MAC:
            {
                OSSL_PARAM params[3];
                size_t params_n = 0;
                char *ciphname = (char *)FUNC10(FUNC2(p2));
#ifndef OPENSSL_NO_ENGINE
                char *engineid = (char *)FUNC1(ctx->engine);

                params[params_n++] =
                    FUNC14("engine", engineid, 0);
#endif
                params[params_n++] =
                    FUNC14(OSSL_MAC_PARAM_CIPHER,
                                                     ciphname, 0);
                params[params_n] = FUNC11();

                if (!FUNC6(hctx->ctx, params)
                    || !FUNC7(hctx->ctx))
                    return 0;
            }
            break;
        default:
            /* This should be dead code */
            return 0;
        }
        break;

    case EVP_PKEY_CTRL_MD:
        switch (hctx->type) {
        case MAC_TYPE_RAW:
            hctx->raw_data.md = p2;
            break;
        case MAC_TYPE_MAC: {
                EVP_MAC_CTX *new_mac_ctx;

                if (ctx->pkey == NULL)
                    return 0;
                new_mac_ctx = FUNC3((EVP_MAC_CTX *)ctx->pkey
                                              ->pkey.ptr);
                if (new_mac_ctx == NULL)
                    return 0;
                FUNC4(hctx->ctx);
                hctx->ctx = new_mac_ctx;
            }
            break;
        default:
            /* This should be dead code */
            return 0;
        }
        break;

    case EVP_PKEY_CTRL_SET_DIGEST_SIZE:
        {
            OSSL_PARAM params[2] = { OSSL_PARAM_END, OSSL_PARAM_END };
            size_t size = (size_t)p1;
            size_t verify = 0;

            /*
             * We verify that the length is actually set by getting back
             * the same parameter and checking that it matches what we
             * tried to set.
             * TODO(3.0) when we have a more direct mechanism to check if
             * a parameter was used, we must refactor this to use that.
             */

            params[0] =
                FUNC13(OSSL_MAC_PARAM_SIZE, &size);

            if (!FUNC6(hctx->ctx, params))
                return 0;

            params[0] =
                FUNC13(OSSL_MAC_PARAM_SIZE, &verify);

            if (!FUNC5(hctx->ctx, params))
                return 0;

            /*
             * Since EVP_MAC_CTX_{get,set}_params() returned successfully,
             * we can only assume that the size was ignored, i.e. this
             * control is unsupported.
             */
            if (verify != size)
                return -2;
        }
        break;
    case EVP_PKEY_CTRL_SET_MAC_KEY:
        switch (hctx->type) {
        case MAC_TYPE_RAW:
            if ((!p2 && p1 > 0) || (p1 < -1))
                return 0;
            if (!FUNC0(&hctx->raw_data.ktmp, p2, p1))
                return 0;
            break;
        case MAC_TYPE_MAC:
            {
                OSSL_PARAM params[2];
                size_t params_n = 0;

                params[params_n++] =
                    FUNC12(OSSL_MAC_PARAM_KEY,
                                                      p2, p1);
                params[params_n] = FUNC11();

                return FUNC6(hctx->ctx, params);
            }
            break;
        default:
            /* This should be dead code */
            return 0;
        }
        break;

    case EVP_PKEY_CTRL_DIGESTINIT:
        switch (hctx->type) {
        case MAC_TYPE_RAW:
            /* Ensure that we have attached the implementation */
            if (!FUNC7(hctx->ctx))
                return 0;
            {
                ASN1_OCTET_STRING *key =
                    (ASN1_OCTET_STRING *)ctx->pkey->pkey.ptr;
                OSSL_PARAM params[4];
                size_t params_n = 0;
                char *mdname =
                    (char *)FUNC10(FUNC8(hctx->raw_data.md));
#ifndef OPENSSL_NO_ENGINE
                char *engineid = ctx->engine == NULL
                    ? NULL : (char *)FUNC1(ctx->engine);

                if (engineid != NULL)
                    params[params_n++] =
                        FUNC14("engine", engineid, 0);
#endif
                params[params_n++] =
                    FUNC14(OSSL_MAC_PARAM_DIGEST,
                                                     mdname, 0);
                params[params_n++] =
                    FUNC12(OSSL_MAC_PARAM_KEY,
                                                      key->data, key->length);
                params[params_n] = FUNC11();

                return FUNC6(hctx->ctx, params);
            }
            break;
        case MAC_TYPE_MAC:
            return -2;       /* The mac types don't support ciphers */
        default:
            /* This should be dead code */
            return 0;
        }
        break;

    default:
        return -2;

    }
    return 1;
}