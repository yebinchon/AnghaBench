
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct btrfs_super_block {int dummy; } ;
struct btrfs_root_item {int level; int bytenr; } ;
struct btrfs_path {int dummy; } ;
struct BTRFS_INFO {int dummy; } ;
typedef int ULONG ;
struct TYPE_6__ {scalar_t__ magic; int root_level; int root; } ;
struct TYPE_7__ {struct btrfs_root_item FsRoot; TYPE_1__ SuperBlock; int DeviceId; } ;
typedef int DEVVTBL ;


 int BTRFS_FS_TREE_OBJECTID ;
 scalar_t__ BTRFS_MAGIC_N ;
 int BTRFS_ROOT_ITEM_KEY ;
 int BTRFS_SUPER_INFO_OFFSET ;
 int const BtrFsFuncTable ;
 TYPE_2__* BtrFsInfo ;
 int BtrFsSearchTreeType (struct btrfs_root_item*,int ,int ,struct btrfs_path*) ;
 TYPE_2__* FrLdrTempAlloc (int,int ) ;
 int FrLdrTempFree (TYPE_2__*,int ) ;
 int RtlZeroMemory (TYPE_2__*,int) ;
 int TAG_BTRFS_INFO ;
 int TRACE (char*,int ) ;
 int btrfs_init_crc32c () ;
 int btrfs_read_chunk_tree () ;
 int btrfs_read_sys_chunk_array () ;
 int disk_read (int ,TYPE_1__*,int) ;
 int free_path (struct btrfs_path*) ;
 int init_path (struct btrfs_path*) ;
 scalar_t__ path_current_data (struct btrfs_path*) ;

const DEVVTBL *BtrFsMount(ULONG DeviceId)
{
    struct btrfs_path path;
    struct btrfs_root_item fs_root_item;

    TRACE("Enter BtrFsMount(%lu)\n", DeviceId);

    BtrFsInfo = FrLdrTempAlloc(sizeof(struct BTRFS_INFO), TAG_BTRFS_INFO);
    if (!BtrFsInfo)
        return ((void*)0);
    RtlZeroMemory(BtrFsInfo, sizeof(struct BTRFS_INFO));


    if (!disk_read(BTRFS_SUPER_INFO_OFFSET, &BtrFsInfo->SuperBlock, sizeof(struct btrfs_super_block)))
    {
        FrLdrTempFree(BtrFsInfo, TAG_BTRFS_INFO);
        return ((void*)0);
    }


    if (BtrFsInfo->SuperBlock.magic != BTRFS_MAGIC_N)
    {
        FrLdrTempFree(BtrFsInfo, TAG_BTRFS_INFO);
        return ((void*)0);
    }

    BtrFsInfo->DeviceId = DeviceId;
    TRACE("BtrFsMount(%lu) superblock magic ok\n", DeviceId);

    btrfs_init_crc32c();

    btrfs_read_sys_chunk_array();
    btrfs_read_chunk_tree();


    fs_root_item.bytenr = BtrFsInfo->SuperBlock.root;
    fs_root_item.level = BtrFsInfo->SuperBlock.root_level;

    init_path(&path);
    if (!BtrFsSearchTreeType(&fs_root_item, BTRFS_FS_TREE_OBJECTID, BTRFS_ROOT_ITEM_KEY, &path))
    {
        FrLdrTempFree(BtrFsInfo, TAG_BTRFS_INFO);
        free_path(&path);
        return ((void*)0);
    }

    BtrFsInfo->FsRoot = *(struct btrfs_root_item *) path_current_data(&path);

    free_path(&path);

    TRACE("BtrFsMount(%lu) success\n", DeviceId);
    return &BtrFsFuncTable;
}
