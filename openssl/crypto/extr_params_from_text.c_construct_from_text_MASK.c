#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int data_type; size_t data_size; scalar_t__ return_size; void* data; } ;
typedef  TYPE_1__ OSSL_PARAM ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t,size_t*,char const*) ; 
#define  OSSL_PARAM_INTEGER 131 
#define  OSSL_PARAM_OCTET_STRING 130 
#define  OSSL_PARAM_UNSIGNED_INTEGER 129 
#define  OSSL_PARAM_UTF8_STRING 128 
 int /*<<< orphan*/  FUNC3 (void*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*,char const*,size_t) ; 

__attribute__((used)) static int FUNC5(OSSL_PARAM *to, const OSSL_PARAM *paramdef,
                               const char *value, size_t value_n, int ishex,
                               void *buf, size_t buf_n, BIGNUM *tmpbn)
{
    if (buf == NULL)
        return 0;

    if (buf_n > 0) {
        switch (paramdef->data_type) {
        case OSSL_PARAM_INTEGER:
        case OSSL_PARAM_UNSIGNED_INTEGER:
            /*
            {
                if ((new_value = OPENSSL_malloc(new_value_n)) == NULL) {
                    BN_free(a);
                    break;
                }
            */

            FUNC0(tmpbn, buf, buf_n);

            /*
             * 2s complement negate, part two.
             *
             * Because we did the first part on the BIGNUM itself, we can just
             * invert all the bytes here and be done with it.
             */
            if (paramdef->data_type == OSSL_PARAM_INTEGER
                && FUNC1(tmpbn)) {
                unsigned char *cp;
                size_t i = buf_n;

                for (cp = buf; i-- > 0; cp++)
                    *cp ^= 0xFF;
            }
            break;
        case OSSL_PARAM_UTF8_STRING:
            FUNC4(buf, value, buf_n);
            break;
        case OSSL_PARAM_OCTET_STRING:
            if (ishex) {
                size_t l = 0;

                if (!FUNC2(buf, buf_n, &l, value))
                    return 0;
            } else {
                FUNC3(buf, value, buf_n);
            }
            break;
        }
    }

    *to = *paramdef;
    to->data = buf;
    to->data_size = buf_n;
    to->return_size = 0;

    return 1;
}