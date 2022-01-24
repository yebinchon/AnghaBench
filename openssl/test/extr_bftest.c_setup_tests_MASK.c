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
typedef  int OPTION_CHOICE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int KEY_TEST_NUM ; 
 int NUM_TESTS ; 
 int OPT_EOF ; 
#define  OPT_PRINT 129 
#define  OPT_TEST_CASES 128 
 int /*<<< orphan*/ * bf_key ; 
 int /*<<< orphan*/  cbc_data ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_bf_cbc ; 
 int /*<<< orphan*/  test_bf_cfb64 ; 
 int /*<<< orphan*/  test_bf_ecb ; 
 int /*<<< orphan*/  test_bf_ecb_raw ; 
 int /*<<< orphan*/  test_bf_ofb64 ; 
 int /*<<< orphan*/  test_bf_set_key ; 

int FUNC6(void)
{
#ifndef OPENSSL_NO_BF
    OPTION_CHOICE o;
# ifdef CHARSET_EBCDIC
    int n;
    ebcdic2ascii(cbc_data, cbc_data, strlen(cbc_data));
    for (n = 0; n < 2; n++) {
        ebcdic2ascii(bf_key[n], bf_key[n], strlen(bf_key[n]));
    }
# endif

    while ((o = FUNC3()) != OPT_EOF) {
        switch(o) {
        case OPT_PRINT:
            FUNC4();
            return 1;
        case OPT_TEST_CASES:
            break;
        default:
           return 0;
        }
    }

    FUNC0(test_bf_ecb_raw, 2);
    FUNC0(test_bf_ecb, NUM_TESTS);
    FUNC0(test_bf_set_key, KEY_TEST_NUM-1);
    FUNC1(test_bf_cbc);
    FUNC1(test_bf_cfb64);
    FUNC1(test_bf_ofb64);
#endif
    return 1;
}