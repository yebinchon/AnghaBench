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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  stderr ; 

BIO *FUNC5(int format)
{
    BIO *b = FUNC2(stderr,
                        BIO_NOCLOSE | (FUNC4(format) ? BIO_FP_TEXT : 0));
#ifdef OPENSSL_SYS_VMS
    if (FMT_istext(format))
        b = BIO_push(BIO_new(BIO_f_linebuffer()), b);
#endif
    return b;
}