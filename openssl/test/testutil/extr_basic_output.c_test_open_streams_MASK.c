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

/* Variables and functions */
 int BIO_FP_TEXT ; 
 int BIO_NOCLOSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * bio_err ; 
 int /*<<< orphan*/ * bio_out ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

void FUNC6(void)
{
    bio_out = FUNC3(stdout, BIO_NOCLOSE | BIO_FP_TEXT);
    bio_err = FUNC3(stderr, BIO_NOCLOSE | BIO_FP_TEXT);
#ifdef __VMS
    bio_out = BIO_push(BIO_new(BIO_f_linebuffer()), bio_out);
    bio_err = BIO_push(BIO_new(BIO_f_linebuffer()), bio_err);
#endif
    bio_err = FUNC4(FUNC2(FUNC1()), bio_err);

    FUNC5(bio_out != NULL);
    FUNC5(bio_err != NULL);
}