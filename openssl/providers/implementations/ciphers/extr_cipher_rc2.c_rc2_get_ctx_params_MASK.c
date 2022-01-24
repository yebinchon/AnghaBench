#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {unsigned char* data; scalar_t__ data_type; size_t return_size; } ;
struct TYPE_9__ {int /*<<< orphan*/  ivlen; int /*<<< orphan*/  iv; } ;
struct TYPE_10__ {TYPE_1__ base; int /*<<< orphan*/  key_bits; } ;
typedef  TYPE_2__ PROV_RC2_CTX ;
typedef  TYPE_3__ OSSL_PARAM ;
typedef  int /*<<< orphan*/  ASN1_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_ALG_ID ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_RC2_KEYBITS ; 
 scalar_t__ OSSL_PARAM_OCTET_STRING ; 
 TYPE_3__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_FAILED_TO_SET_PARAMETER ; 
 int /*<<< orphan*/  FUNC6 (void*,TYPE_3__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned char**) ; 
 long FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(void *vctx, OSSL_PARAM params[])
{
    PROV_RC2_CTX *ctx = (PROV_RC2_CTX *)vctx;
    OSSL_PARAM *p;

    if (!FUNC6(vctx, params))
        return 0;
    p = FUNC4(params, OSSL_CIPHER_PARAM_RC2_KEYBITS);
    if (p != NULL && !FUNC5(p, ctx->key_bits)) {
        FUNC3(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = FUNC4(params, OSSL_CIPHER_PARAM_ALG_ID);
    if (p != NULL) {
        long num;
        int i;
        ASN1_TYPE *type;
        unsigned char *d = p->data;
        unsigned char **dd = d == NULL ? NULL : &d;

        if (p->data_type != OSSL_PARAM_OCTET_STRING) {
            FUNC3(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
        if ((type = FUNC1()) == NULL) {
            FUNC3(ERR_LIB_PROV, ERR_R_MALLOC_FAILURE);
            return 0;
        }

        /* Is this the original IV or the running IV? */
        num = FUNC8(ctx->key_bits);
        if (!FUNC2(type, num,
                                           ctx->base.iv, ctx->base.ivlen)) {
            FUNC0(type);
            FUNC3(ERR_LIB_PROV, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        /*
         * IF the caller has a buffer, we pray to the gods they got the
         * size right.  There's no way to tell the i2d functions...
         */
        i = FUNC7(type, dd);
        if (i >= 0)
            p->return_size = (size_t)i;

        FUNC0(type);
        if (i < 0) {
            FUNC3(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
    }
    return 1;
}