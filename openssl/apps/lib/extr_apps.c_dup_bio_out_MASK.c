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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int BIO_FP_TEXT ; 
 int BIO_NOCLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  PREFIX_CTRL_SET_PREFIX ; 
 int /*<<< orphan*/  FUNC6 () ; 
 void* FUNC7 (char*) ; 
 int /*<<< orphan*/  stdout ; 

BIO *FUNC8(int format)
{
    BIO *b = FUNC3(stdout,
                        BIO_NOCLOSE | (FUNC5(format) ? BIO_FP_TEXT : 0));
    void *prefix = NULL;

#ifdef OPENSSL_SYS_VMS
    if (FMT_istext(format))
        b = BIO_push(BIO_new(BIO_f_linebuffer()), b);
#endif

    if (FUNC5(format)
        && (prefix = FUNC7("HARNESS_OSSL_PREFIX")) != NULL) {
        b = FUNC4(FUNC2(FUNC6()), b);
        FUNC0(b, PREFIX_CTRL_SET_PREFIX, 0, prefix);
    }

    return b;
}