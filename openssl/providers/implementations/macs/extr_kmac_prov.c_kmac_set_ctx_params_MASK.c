#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct kmac_data_st {int /*<<< orphan*/  custom_len; int /*<<< orphan*/  custom; int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; int /*<<< orphan*/  out_len; int /*<<< orphan*/  xof_mode; int /*<<< orphan*/  digest; } ;
struct TYPE_7__ {int data_size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ OSSL_PARAM ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int KMAC_MAX_CUSTOM ; 
 int KMAC_MAX_KEY ; 
 int /*<<< orphan*/  OSSL_MAC_PARAM_CUSTOM ; 
 int /*<<< orphan*/  OSSL_MAC_PARAM_KEY ; 
 int /*<<< orphan*/  OSSL_MAC_PARAM_SIZE ; 
 int /*<<< orphan*/  OSSL_MAC_PARAM_XOF ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_INVALID_CUSTOM_LENGTH ; 
 int /*<<< orphan*/  PROV_R_INVALID_KEY_LENGTH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(void *vmacctx, const OSSL_PARAM *params)
{
    struct kmac_data_st *kctx = vmacctx;
    const OSSL_PARAM *p;
    const EVP_MD *digest = FUNC7(&kctx->digest);

    if ((p = FUNC4(params, OSSL_MAC_PARAM_XOF)) != NULL
        && !FUNC2(p, &kctx->xof_mode))
        return 0;
    if (((p = FUNC4(params, OSSL_MAC_PARAM_SIZE)) != NULL)
        && !FUNC3(p, &kctx->out_len))
        return 0;
    if ((p = FUNC4(params, OSSL_MAC_PARAM_KEY)) != NULL) {
        if (p->data_size < 4 || p->data_size > KMAC_MAX_KEY) {
            FUNC0(ERR_LIB_PROV, PROV_R_INVALID_KEY_LENGTH);
            return 0;
        }
        if (!FUNC6(kctx->key, &kctx->key_len,
                                     p->data, p->data_size,
                                     FUNC1(digest)))
            return 0;
    }
    if ((p = FUNC4(params, OSSL_MAC_PARAM_CUSTOM))
        != NULL) {
        if (p->data_size > KMAC_MAX_CUSTOM) {
            FUNC0(ERR_LIB_PROV, PROV_R_INVALID_CUSTOM_LENGTH);
            return 0;
        }
        if (!FUNC5(kctx->custom, &kctx->custom_len,
                           p->data, p->data_size))
            return 0;
    }
    return 1;
}