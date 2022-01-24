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
struct btrfs_root_item {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_inode_item {int dummy; } ;
struct btrfs_disk_key {int /*<<< orphan*/  offset; int /*<<< orphan*/  type; int /*<<< orphan*/  objectid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct btrfs_root_item const*,struct btrfs_disk_key*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_path*) ; 
 scalar_t__ FUNC4 (struct btrfs_path*) ; 

__attribute__((used)) static int FUNC5(const struct btrfs_root_item *root,
                              struct btrfs_disk_key *location,
                              struct btrfs_inode_item *item,
                              struct btrfs_root_item *new_root)
{
    const struct btrfs_root_item tmp_root = *root;
    struct btrfs_path path;
    int res = -1;

//    if (location->type == BTRFS_ROOT_ITEM_KEY) {
//        if (btrfs_find_root(location->objectid, &tmp_root, NULL))
//            return -1;
//
//        location->objectid = tmp_root.root_dirid;
//        location->type = BTRFS_INODE_ITEM_KEY;
//        location->offset = 0;
//    }
    FUNC3(&path);
    FUNC1("Searching inode (%llu %u %llu)\n", location->objectid, location->type, location->offset);

    if (FUNC0(&tmp_root, location, &path))
    {
        if (item)
            *item = *((struct btrfs_inode_item *) FUNC4(&path));

        if (new_root)
            *new_root = tmp_root;

        res = 0;
    }

    FUNC2(&path);
    return res;
}