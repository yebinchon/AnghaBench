#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int data_type; size_t data_size; } ;
typedef  TYPE_1__ OSSL_PARAM ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  CRYPTO_R_TOO_SMALL_BUFFER ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_PASSED_INVALID_ARGUMENT ; 
#define  OSSL_PARAM_INTEGER 131 
#define  OSSL_PARAM_OCTET_STRING 130 
#define  OSSL_PARAM_UNSIGNED_INTEGER 129 
#define  OSSL_PARAM_UTF8_STRING 128 
 TYPE_1__* FUNC6 (TYPE_1__ const*,char const*) ; 
 int FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC9(const OSSL_PARAM *paramdefs, const char *key,
                             const char *value, size_t value_n,
                             /* Output parameters */
                             const OSSL_PARAM **paramdef, int *ishex,
                             size_t *buf_n, BIGNUM **tmpbn)
{
    const OSSL_PARAM *p;

    /*
     * ishex is used to translate legacy style string controls in hex format
     * to octet string parameters.
     */
    *ishex = FUNC8(key, "hex", 3) == 0;

    if (*ishex)
        key += 3;

    p = *paramdef = FUNC6(paramdefs, key);
    if (p == NULL)
        return 0;

    switch (p->data_type) {
    case OSSL_PARAM_INTEGER:
    case OSSL_PARAM_UNSIGNED_INTEGER:
        if (*ishex)
            FUNC1(tmpbn, value);
        else
            FUNC0(tmpbn, value);

        if (*tmpbn == NULL)
            return 0;

        /*
         * 2s complement negate, part 1
         *
         * BN_bn2nativepad puts the absolute value of the number in the
         * buffer, i.e. if it's negative, we need to deal with it.  We do
         * it by subtracting 1 here and inverting the bytes in
         * construct_from_text() below.
         */
        if (p->data_type == OSSL_PARAM_INTEGER && FUNC2(*tmpbn)
            && !FUNC4(*tmpbn, 1)) {
            return 0;
        }

        *buf_n = FUNC3(*tmpbn);

        /*
         * TODO(v3.0) is this the right way to do this?  This code expects
         * a zero data size to simply mean "arbitrary size".
         */
        if (p->data_size > 0) {
            if (*buf_n >= p->data_size) {
                FUNC5(0, CRYPTO_R_TOO_SMALL_BUFFER);
                /* Since this is a different error, we don't break */
                return 0;
            }
            /* Change actual size to become the desired size. */
            *buf_n = p->data_size;
        }
        break;
    case OSSL_PARAM_UTF8_STRING:
        if (*ishex) {
            FUNC5(0, ERR_R_PASSED_INVALID_ARGUMENT);
            return 0;
        }
        *buf_n = FUNC7(value) + 1;
        break;
    case OSSL_PARAM_OCTET_STRING:
        if (*ishex) {
            *buf_n = FUNC7(value) >> 1;
        } else {
            *buf_n = value_n;
        }
        break;
    }

    return 1;
}