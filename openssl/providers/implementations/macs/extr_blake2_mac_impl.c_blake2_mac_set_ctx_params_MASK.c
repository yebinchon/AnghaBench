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
typedef  int /*<<< orphan*/  uint8_t ;
struct blake2_mac_data_st {int /*<<< orphan*/  params; void* key; } ;
struct TYPE_7__ {scalar_t__ data_size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ OSSL_PARAM ;

/* Variables and functions */
 scalar_t__ BLAKE2_KEYBYTES ; 
 size_t BLAKE2_OUTBYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ BLAKE2_PERSONALBYTES ; 
 scalar_t__ BLAKE2_SALTBYTES ; 
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_MAC_PARAM_CUSTOM ; 
 int /*<<< orphan*/  OSSL_MAC_PARAM_KEY ; 
 int /*<<< orphan*/  OSSL_MAC_PARAM_SALT ; 
 int /*<<< orphan*/  OSSL_MAC_PARAM_SIZE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*,void**,scalar_t__,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const*,size_t*) ; 
 TYPE_1__* FUNC7 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_INVALID_CUSTOM_LENGTH ; 
 int /*<<< orphan*/  PROV_R_INVALID_KEY_LENGTH ; 
 int /*<<< orphan*/  PROV_R_INVALID_SALT_LENGTH ; 
 int /*<<< orphan*/  PROV_R_NOT_XOF_OR_INVALID_LENGTH ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9(void *vmacctx, const OSSL_PARAM params[])
{
    struct blake2_mac_data_st *macctx = vmacctx;
    const OSSL_PARAM *p;

    if ((p = FUNC7(params, OSSL_MAC_PARAM_SIZE)) != NULL) {
        size_t size;

        if (!FUNC6(p, &size)
            || size < 1
            || size > BLAKE2_OUTBYTES) {
            FUNC4(ERR_LIB_PROV, PROV_R_NOT_XOF_OR_INVALID_LENGTH);
            return 0;
        }
        FUNC0(&macctx->params, (uint8_t)size);
    }

    if ((p = FUNC7(params, OSSL_MAC_PARAM_KEY)) != NULL) {
        size_t len;
        void *key_p = macctx->key;

        if (!FUNC5(p, &key_p, BLAKE2_KEYBYTES, &len)) {
            FUNC4(ERR_LIB_PROV, PROV_R_INVALID_KEY_LENGTH);
            return 0;
        }
        /* Pad with zeroes at the end */
        FUNC8(macctx->key + len, 0, BLAKE2_KEYBYTES - len);

        FUNC1(&macctx->params, (uint8_t)len);
    }

    if ((p = FUNC7(params, OSSL_MAC_PARAM_CUSTOM))
        != NULL) {
        /*
         * The OSSL_PARAM API doesn't provide direct pointer use, so we
         * must handle the OSSL_PARAM structure ourselves here
         */
        if (p->data_size > BLAKE2_PERSONALBYTES) {
            FUNC4(ERR_LIB_PROV, PROV_R_INVALID_CUSTOM_LENGTH);
            return 0;
        }
        FUNC2(&macctx->params, p->data, p->data_size);
    }

    if ((p = FUNC7(params, OSSL_MAC_PARAM_SALT)) != NULL) {
        /*
         * The OSSL_PARAM API doesn't provide direct pointer use, so we
         * must handle the OSSL_PARAM structure ourselves here as well
         */
        if (p->data_size > BLAKE2_SALTBYTES) {
            FUNC4(ERR_LIB_PROV, PROV_R_INVALID_SALT_LENGTH);
            return 0;
        }
        FUNC3(&macctx->params, p->data, p->data_size);
    }
    return 1;
}