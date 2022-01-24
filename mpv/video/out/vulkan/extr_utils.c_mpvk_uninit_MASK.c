#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mpvk_ctx {int /*<<< orphan*/  pl_log; int /*<<< orphan*/  ctx; TYPE_1__* vkinst; int /*<<< orphan*/ * surface; } ;
struct TYPE_3__ {int /*<<< orphan*/  instance; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(struct mpvk_ctx *vk)
{
    if (vk->surface) {
        FUNC1(vk->vkinst);
        FUNC4(vk->vkinst->instance, vk->surface, NULL);
        vk->surface = NULL;
    }

    FUNC3(&vk->vkinst);
    FUNC2(&vk->ctx);
    FUNC0(&vk->pl_log);
}