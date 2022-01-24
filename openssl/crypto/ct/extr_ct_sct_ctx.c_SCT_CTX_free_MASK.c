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
struct TYPE_4__ {struct TYPE_4__* preder; struct TYPE_4__* certder; struct TYPE_4__* ihash; struct TYPE_4__* pkeyhash; int /*<<< orphan*/  pkey; } ;
typedef  TYPE_1__ SCT_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(SCT_CTX *sctx)
{
    if (sctx == NULL)
        return;
    FUNC0(sctx->pkey);
    FUNC1(sctx->pkeyhash);
    FUNC1(sctx->ihash);
    FUNC1(sctx->certder);
    FUNC1(sctx->preder);
    FUNC1(sctx);
}