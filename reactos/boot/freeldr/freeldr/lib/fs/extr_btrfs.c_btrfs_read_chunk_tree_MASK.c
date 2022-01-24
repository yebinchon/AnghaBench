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
struct btrfs_super_block {int flags; int num_devices; int /*<<< orphan*/  chunk_root_level; int /*<<< orphan*/  chunk_root; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_disk_key {scalar_t__ offset; int /*<<< orphan*/  type; int /*<<< orphan*/  objectid; } ;
struct btrfs_chunk {int dummy; } ;
struct TYPE_2__ {struct btrfs_super_block SuperBlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_CHUNK_ITEM_KEY ; 
 int /*<<< orphan*/  BTRFS_DEV_ITEMS_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_DEV_ITEM_KEY ; 
 int /*<<< orphan*/  BTRFS_FIRST_CHUNK_TREE_OBJECTID ; 
 int BTRFS_SUPER_FLAG_METADUMP ; 
 TYPE_1__* BtrFsInfo ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct btrfs_disk_key*,struct btrfs_path*) ; 
 scalar_t__ FUNC2 (struct btrfs_disk_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct btrfs_chunk*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_disk_key*,struct btrfs_path*) ; 
 scalar_t__ FUNC7 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_path*) ; 

__attribute__((used)) static void FUNC9()
{
    struct btrfs_super_block *sb = &BtrFsInfo->SuperBlock;
    struct btrfs_disk_key ignore_key;
    struct btrfs_disk_key search_key;
    struct btrfs_chunk *chunk;
    struct btrfs_path path;

    if (!(sb->flags & BTRFS_SUPER_FLAG_METADUMP))
    {
        if (sb->num_devices > 1)
            FUNC0("warning: only support single device btrfs\n");

        ignore_key.objectid = BTRFS_DEV_ITEMS_OBJECTID;
        ignore_key.type = BTRFS_DEV_ITEM_KEY;

        /* read chunk from chunk_tree */
        search_key.objectid = BTRFS_FIRST_CHUNK_TREE_OBJECTID;
        search_key.type = BTRFS_CHUNK_ITEM_KEY;
        search_key.offset = 0;
        FUNC4(&path);
        FUNC1(sb->chunk_root, sb->chunk_root_level, &search_key, &path);
        do
        {
            /* skip information about underlying block
             * devices.
             */
            if (!FUNC2(&ignore_key, FUNC8(&path)))
                continue;
            if (FUNC2(&search_key, FUNC8(&path)))
                break;

            chunk = (struct btrfs_chunk *) (FUNC7(&path));
            FUNC5(FUNC8(&path), chunk);
        } while (!FUNC6(&search_key, &path));
        FUNC3(&path);
    }
}