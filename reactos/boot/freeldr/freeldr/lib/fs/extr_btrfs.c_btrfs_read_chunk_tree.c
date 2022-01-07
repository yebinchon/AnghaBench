
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_super_block {int flags; int num_devices; int chunk_root_level; int chunk_root; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_disk_key {scalar_t__ offset; int type; int objectid; } ;
struct btrfs_chunk {int dummy; } ;
struct TYPE_2__ {struct btrfs_super_block SuperBlock; } ;


 int BTRFS_CHUNK_ITEM_KEY ;
 int BTRFS_DEV_ITEMS_OBJECTID ;
 int BTRFS_DEV_ITEM_KEY ;
 int BTRFS_FIRST_CHUNK_TREE_OBJECTID ;
 int BTRFS_SUPER_FLAG_METADUMP ;
 TYPE_1__* BtrFsInfo ;
 int TRACE (char*) ;
 int _BtrFsSearchTree (int ,int ,struct btrfs_disk_key*,struct btrfs_path*) ;
 scalar_t__ btrfs_comp_keys_type (struct btrfs_disk_key*,int ) ;
 int free_path (struct btrfs_path*) ;
 int init_path (struct btrfs_path*) ;
 int insert_map (int ,struct btrfs_chunk*) ;
 int next_slot (struct btrfs_disk_key*,struct btrfs_path*) ;
 scalar_t__ path_current_data (struct btrfs_path*) ;
 int path_current_disk_key (struct btrfs_path*) ;

__attribute__((used)) static void btrfs_read_chunk_tree()
{
    struct btrfs_super_block *sb = &BtrFsInfo->SuperBlock;
    struct btrfs_disk_key ignore_key;
    struct btrfs_disk_key search_key;
    struct btrfs_chunk *chunk;
    struct btrfs_path path;

    if (!(sb->flags & BTRFS_SUPER_FLAG_METADUMP))
    {
        if (sb->num_devices > 1)
            TRACE("warning: only support single device btrfs\n");

        ignore_key.objectid = BTRFS_DEV_ITEMS_OBJECTID;
        ignore_key.type = BTRFS_DEV_ITEM_KEY;


        search_key.objectid = BTRFS_FIRST_CHUNK_TREE_OBJECTID;
        search_key.type = BTRFS_CHUNK_ITEM_KEY;
        search_key.offset = 0;
        init_path(&path);
        _BtrFsSearchTree(sb->chunk_root, sb->chunk_root_level, &search_key, &path);
        do
        {



            if (!btrfs_comp_keys_type(&ignore_key, path_current_disk_key(&path)))
                continue;
            if (btrfs_comp_keys_type(&search_key, path_current_disk_key(&path)))
                break;

            chunk = (struct btrfs_chunk *) (path_current_data(&path));
            insert_map(path_current_disk_key(&path), chunk);
        } while (!next_slot(&search_key, &path));
        free_path(&path);
    }
}
