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
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMP_R_NO_STDIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_TRACE_CATEGORY_CMP ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC4(void) /* is designed to be idempotent */
{
#ifndef OPENSSL_NO_STDIO
    BIO *bio = FUNC1(stdout, BIO_NOCLOSE);

    if (bio != NULL && FUNC3(OSSL_TRACE_CATEGORY_CMP, bio))
        return 1;
    FUNC0(bio);
#endif
    FUNC2(0, CMP_R_NO_STDIO);
    return 0;
}