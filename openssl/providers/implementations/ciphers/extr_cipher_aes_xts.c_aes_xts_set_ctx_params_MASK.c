#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t keylen; } ;
typedef  TYPE_1__ PROV_CIPHER_CTX ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_KEYLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,size_t*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_FAILED_TO_GET_PARAMETER ; 

__attribute__((used)) static int FUNC3(void *vctx, const OSSL_PARAM params[])
{
    PROV_CIPHER_CTX *ctx = (PROV_CIPHER_CTX *)vctx;
    const OSSL_PARAM *p;

    /*
     * TODO(3.0) We need a general solution for handling missing parameters
     * inside set_params and get_params methods.
     */
    p = FUNC2(params, OSSL_CIPHER_PARAM_KEYLEN);
    if (p != NULL) {
        size_t keylen;

        if (!FUNC1(p, &keylen)) {
            FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        /* The key length can not be modified for xts mode */
        if (keylen != ctx->keylen)
            return 0;
    }

    return 1;
}