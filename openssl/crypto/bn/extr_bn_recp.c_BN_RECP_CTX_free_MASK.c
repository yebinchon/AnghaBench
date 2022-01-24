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
struct TYPE_4__ {int flags; int /*<<< orphan*/  Nr; int /*<<< orphan*/  N; } ;
typedef  TYPE_1__ BN_RECP_CTX ;

/* Variables and functions */
 int BN_FLG_MALLOCED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(BN_RECP_CTX *recp)
{
    if (recp == NULL)
        return;
    FUNC0(&recp->N);
    FUNC0(&recp->Nr);
    if (recp->flags & BN_FLG_MALLOCED)
        FUNC1(recp);
}