#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  BN_FLG_MALLOCED ; 
 int /*<<< orphan*/  BN_F_BN_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

BIGNUM *FUNC3(void)
{
    BIGNUM *ret;

    if ((ret = FUNC1(sizeof(*ret))) == NULL) {
        FUNC0(BN_F_BN_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    ret->flags = BN_FLG_MALLOCED;
    FUNC2(ret);
    return ret;
}