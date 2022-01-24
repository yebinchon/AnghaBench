#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct btrfs_path {int /*<<< orphan*/  tree_buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  nodesize; } ;
struct TYPE_4__ {TYPE_1__ SuperBlock; } ;

/* Variables and functions */
 TYPE_2__* BtrFsInfo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG_BTRFS_NODE ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_path*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct btrfs_path *path)
{
    FUNC1(path, 0, sizeof(*path));
    path->tree_buf = FUNC0(BtrFsInfo->SuperBlock.nodesize, TAG_BTRFS_NODE);
}