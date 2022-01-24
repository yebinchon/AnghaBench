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
typedef  int /*<<< orphan*/  BN_GENCB ;

/* Variables and functions */
 int /*<<< orphan*/  BN_F_BN_GENCB_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

BN_GENCB *FUNC2(void)
{
    BN_GENCB *ret;

    if ((ret = FUNC1(sizeof(*ret))) == NULL) {
        FUNC0(BN_F_BN_GENCB_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    return ret;
}