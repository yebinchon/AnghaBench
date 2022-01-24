#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* cfg; } ;
typedef  TYPE_1__ lfs2_t ;
typedef  scalar_t__ lfs2_block_t ;
struct TYPE_5__ {scalar_t__ block_count; int (* erase ) (TYPE_2__*,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(lfs2_t *lfs2, lfs2_block_t block) {
    FUNC0(block < lfs2->cfg->block_count);
    int err = lfs2->cfg->erase(lfs2->cfg, block);
    FUNC0(err <= 0);
    return err;
}