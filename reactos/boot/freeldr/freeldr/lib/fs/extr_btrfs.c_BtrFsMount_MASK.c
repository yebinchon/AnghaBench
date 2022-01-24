#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct btrfs_super_block {int dummy; } ;
struct btrfs_root_item {int /*<<< orphan*/  level; int /*<<< orphan*/  bytenr; } ;
struct btrfs_path {int dummy; } ;
struct BTRFS_INFO {int dummy; } ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_6__ {scalar_t__ magic; int /*<<< orphan*/  root_level; int /*<<< orphan*/  root; } ;
struct TYPE_7__ {struct btrfs_root_item FsRoot; TYPE_1__ SuperBlock; int /*<<< orphan*/  DeviceId; } ;
typedef  int /*<<< orphan*/  DEVVTBL ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_TREE_OBJECTID ; 
 scalar_t__ BTRFS_MAGIC_N ; 
 int /*<<< orphan*/  BTRFS_ROOT_ITEM_KEY ; 
 int /*<<< orphan*/  BTRFS_SUPER_INFO_OFFSET ; 
 int /*<<< orphan*/  const BtrFsFuncTable ; 
 TYPE_2__* BtrFsInfo ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_root_item*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct btrfs_path*) ; 
 TYPE_2__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  TAG_BTRFS_INFO ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_path*) ; 
 scalar_t__ FUNC11 (struct btrfs_path*) ; 

const DEVVTBL *FUNC12(ULONG DeviceId)
{
    struct btrfs_path path;
    struct btrfs_root_item fs_root_item;

    FUNC4("Enter BtrFsMount(%lu)\n", DeviceId);

    BtrFsInfo = FUNC1(sizeof(struct BTRFS_INFO), TAG_BTRFS_INFO);
    if (!BtrFsInfo)
        return NULL;
    FUNC3(BtrFsInfo, sizeof(struct BTRFS_INFO));

    /* Read the SuperBlock */
    if (!FUNC8(BTRFS_SUPER_INFO_OFFSET, &BtrFsInfo->SuperBlock, sizeof(struct btrfs_super_block)))
    {
        FUNC2(BtrFsInfo, TAG_BTRFS_INFO);
        return NULL;
    }

    /* Check if SuperBlock is valid. If yes, return BTRFS function table */
    if (BtrFsInfo->SuperBlock.magic != BTRFS_MAGIC_N)
    {
        FUNC2(BtrFsInfo, TAG_BTRFS_INFO);
        return NULL;
    }

    BtrFsInfo->DeviceId = DeviceId;
    FUNC4("BtrFsMount(%lu) superblock magic ok\n", DeviceId);

    FUNC5();

    FUNC7();
    FUNC6();

    /* setup roots */
    fs_root_item.bytenr = BtrFsInfo->SuperBlock.root;
    fs_root_item.level = BtrFsInfo->SuperBlock.root_level;

    FUNC10(&path);
    if (!FUNC0(&fs_root_item, BTRFS_FS_TREE_OBJECTID, BTRFS_ROOT_ITEM_KEY, &path))
    {
        FUNC2(BtrFsInfo, TAG_BTRFS_INFO);
        FUNC9(&path);
        return NULL;
    }

    BtrFsInfo->FsRoot = *(struct btrfs_root_item *) FUNC11(&path);

    FUNC9(&path);

    FUNC4("BtrFsMount(%lu) success\n", DeviceId);
    return &BtrFsFuncTable;
}