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
typedef  int /*<<< orphan*/  TS_VERIFY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  TS_F_TS_VERIFY_CTX_NEW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

TS_VERIFY_CTX *FUNC2(void)
{
    TS_VERIFY_CTX *ctx = FUNC0(sizeof(*ctx));

    if (ctx == NULL)
        FUNC1(TS_F_TS_VERIFY_CTX_NEW, ERR_R_MALLOC_FAILURE);
    return ctx;
}