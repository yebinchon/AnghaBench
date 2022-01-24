#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  ERR_R_PASSED_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  EVP_PKEY_CTRL_SET1_ID ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int NID_undef ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (char const*) ; 
 int OPENSSL_EC_NAMED_CURVE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,long*) ; 
 int /*<<< orphan*/  SM2_F_PKEY_SM2_CTRL_STR ; 
 int /*<<< orphan*/  SM2_R_INVALID_CURVE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void*) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 scalar_t__ FUNC10 (char const*) ; 

__attribute__((used)) static int FUNC11(EVP_PKEY_CTX *ctx,
                             const char *type, const char *value)
{
    uint8_t *hex_id;
    long hex_len = 0;
    int ret = 0;

    if (FUNC9(type, "ec_paramgen_curve") == 0) {
        int nid = NID_undef;

        if (((nid = FUNC0(value)) == NID_undef)
            && ((nid = FUNC4(value)) == NID_undef)
            && ((nid = FUNC3(value)) == NID_undef)) {
            FUNC7(SM2_F_PKEY_SM2_CTRL_STR, SM2_R_INVALID_CURVE);
            return 0;
        }
        return FUNC2(ctx, nid);
    } else if (FUNC9(type, "ec_param_enc") == 0) {
        int param_enc;

        if (FUNC9(value, "explicit") == 0)
            param_enc = 0;
        else if (FUNC9(value, "named_curve") == 0)
            param_enc = OPENSSL_EC_NAMED_CURVE;
        else
            return -2;
        return FUNC1(ctx, param_enc);
    } else if (FUNC9(type, "sm2_id") == 0) {
        return FUNC8(ctx, EVP_PKEY_CTRL_SET1_ID,
                             (int)FUNC10(value), (void *)value);
    } else if (FUNC9(type, "sm2_hex_id") == 0) {
        /*
         * TODO(3.0): reconsider the name "sm2_hex_id", OR change
         * OSSL_PARAM_construct_from_text() / OSSL_PARAM_allocate_from_text()
         * to handle infix "_hex_"
         */
        hex_id = FUNC6((const char *)value, &hex_len);
        if (hex_id == NULL) {
            FUNC7(SM2_F_PKEY_SM2_CTRL_STR, ERR_R_PASSED_INVALID_ARGUMENT);
            return 0;
        }
        ret = FUNC8(ctx, EVP_PKEY_CTRL_SET1_ID, (int)hex_len,
                            (void *)hex_id);
        FUNC5(hex_id);
        return ret;
    }

    return -2;
}