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
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  Nr; int /*<<< orphan*/  N; } ;
typedef  TYPE_1__ BN_RECP_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  BN_FLG_MALLOCED ; 
 int /*<<< orphan*/  BN_F_BN_RECP_CTX_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

BN_RECP_CTX *FUNC3(void)
{
    BN_RECP_CTX *ret;

    if ((ret = FUNC1(sizeof(*ret))) == NULL) {
        FUNC0(BN_F_BN_RECP_CTX_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    FUNC2(&(ret->N));
    FUNC2(&(ret->Nr));
    ret->flags = BN_FLG_MALLOCED;
    return ret;
}