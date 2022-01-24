#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  iv ;
struct TYPE_13__ {int ivlen; int keylen; } ;
struct TYPE_12__ {unsigned char* data; scalar_t__ data_type; int /*<<< orphan*/  data_size; } ;
struct TYPE_11__ {int key_bits; TYPE_5__ base; } ;
typedef  TYPE_1__ PROV_RC2_CTX ;
typedef  TYPE_2__ OSSL_PARAM ;
typedef  int /*<<< orphan*/  ASN1_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,long*,unsigned char*,int) ; 
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_ALG_ID ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_RC2_KEYBITS ; 
 scalar_t__ OSSL_PARAM_OCTET_STRING ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__ const*,int*) ; 
 TYPE_2__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_FAILED_TO_GET_PARAMETER ; 
 int /*<<< orphan*/  PROV_R_FAILED_TO_SET_PARAMETER ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (void*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,unsigned char const**,int /*<<< orphan*/ ) ; 
 int FUNC9 (long) ; 

__attribute__((used)) static int FUNC10(void *vctx, OSSL_PARAM params[])
{
    PROV_RC2_CTX *ctx = (PROV_RC2_CTX *)vctx;
    const OSSL_PARAM *p;

    if (!FUNC7(vctx, params))
        return 0;
    p = FUNC5(params, OSSL_CIPHER_PARAM_RC2_KEYBITS);
    if (p != NULL) {
         if (!FUNC3(p, &ctx->key_bits)) {
            FUNC2(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
    }
    p = FUNC4(params, OSSL_CIPHER_PARAM_ALG_ID);
    if (p != NULL) {
        ASN1_TYPE *type = NULL;
        long num = 0;
        const unsigned char *d = p->data;
        int ret = 1;
        unsigned char iv[16];

        if (p->data_type != OSSL_PARAM_OCTET_STRING
            || ctx->base.ivlen > sizeof(iv)
            || (type = FUNC8(NULL, &d, p->data_size)) == NULL
            || ((size_t)FUNC1(type, &num, iv,
                                                      ctx->base.ivlen)
                != ctx->base.ivlen)
            || !FUNC6(&ctx->base, iv, ctx->base.ivlen)
            || (ctx->key_bits = FUNC9(num)) == 0) {
            FUNC2(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            ret = 0;
        }
        FUNC0(type);
        if (ret == 0)
            return 0;
        /*
         * This code assumes that the caller will call
         * EVP_CipherInit_ex() with a non NULL key in order to setup a key that
         * uses the keylen and keybits that were set here.
         */
        ctx->base.keylen = ctx->key_bits / 8;
    }
    return 1;
}