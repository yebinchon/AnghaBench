
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_root_item {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_disk_key {int offset; int type; int objectid; } ;
struct btrfs_dir_item {int dummy; } ;
typedef int BOOLEAN ;


 int BTRFS_DIR_ITEM_KEY ;
 struct btrfs_dir_item* BtrFsMatchDirItemName (struct btrfs_path*,char const*,int) ;
 int BtrFsSearchTree (struct btrfs_root_item const*,struct btrfs_disk_key*,struct btrfs_path*) ;
 int FALSE ;
 int btrfs_crc32c (char const*,int) ;
 int free_path (struct btrfs_path*) ;
 int init_path (struct btrfs_path*) ;

__attribute__((used)) static BOOLEAN BtrFsLookupDirItem(const struct btrfs_root_item *root, u64 dir, const char *name, int name_len,
                                  struct btrfs_dir_item *item)
{
    struct btrfs_path path;
    struct btrfs_disk_key key;
    struct btrfs_dir_item *res = ((void*)0);

    key.objectid = dir;
    key.type = BTRFS_DIR_ITEM_KEY;
    key.offset = btrfs_crc32c(name, name_len);
    init_path(&path);

    if (!BtrFsSearchTree(root, &key, &path))
    {
        free_path(&path);
        return FALSE;
    }

    res = BtrFsMatchDirItemName(&path, name, name_len);
    if (res)
        *item = *res;
    free_path(&path);

    return res != ((void*)0);
}
