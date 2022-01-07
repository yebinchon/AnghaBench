
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root_item {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_inode_item {int dummy; } ;
struct btrfs_disk_key {int offset; int type; int objectid; } ;


 scalar_t__ BtrFsSearchTree (struct btrfs_root_item const*,struct btrfs_disk_key*,struct btrfs_path*) ;
 int TRACE (char*,int ,int ,int ) ;
 int free_path (struct btrfs_path*) ;
 int init_path (struct btrfs_path*) ;
 scalar_t__ path_current_data (struct btrfs_path*) ;

__attribute__((used)) static int btrfs_lookup_inode(const struct btrfs_root_item *root,
                              struct btrfs_disk_key *location,
                              struct btrfs_inode_item *item,
                              struct btrfs_root_item *new_root)
{
    const struct btrfs_root_item tmp_root = *root;
    struct btrfs_path path;
    int res = -1;
    init_path(&path);
    TRACE("Searching inode (%llu %u %llu)\n", location->objectid, location->type, location->offset);

    if (BtrFsSearchTree(&tmp_root, location, &path))
    {
        if (item)
            *item = *((struct btrfs_inode_item *) path_current_data(&path));

        if (new_root)
            *new_root = tmp_root;

        res = 0;
    }

    free_path(&path);
    return res;
}
