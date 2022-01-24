#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct btrfs_root_item {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_inode_ref {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_INODE_REF_KEY ; 
 scalar_t__ FUNC0 (struct btrfs_root_item const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct btrfs_path*) ; 
 int /*<<< orphan*/  INVALID_INODE ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_path*) ; 
 scalar_t__ FUNC3 (struct btrfs_path*) ; 
 TYPE_1__* FUNC4 (struct btrfs_path*) ; 

__attribute__((used)) static u64 FUNC5(const struct btrfs_root_item *root, u64 inr,
                                  struct btrfs_inode_ref *refp, char *name)
{
    struct btrfs_path path;
    struct btrfs_inode_ref *ref;
    u64 ret = INVALID_INODE;
    FUNC2(&path);

    if (FUNC0(root, inr, BTRFS_INODE_REF_KEY, &path))
    {
        ref = (struct btrfs_inode_ref *) FUNC3(&path);

        if (refp)
            *refp = *ref;
        ret = FUNC4(&path)->offset;
    }

    FUNC1(&path);
    return ret;
}