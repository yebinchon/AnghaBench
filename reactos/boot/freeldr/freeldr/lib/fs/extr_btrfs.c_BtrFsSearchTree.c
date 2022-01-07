
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root_item {int level; int bytenr; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_disk_key {int dummy; } ;
typedef int BOOLEAN ;


 int _BtrFsSearchTree (int ,int ,struct btrfs_disk_key*,struct btrfs_path*) ;

__attribute__((used)) static inline BOOLEAN
BtrFsSearchTree(const struct btrfs_root_item *root, struct btrfs_disk_key *key, struct btrfs_path *path)
{
    return _BtrFsSearchTree(root->bytenr, root->level, key, path);
}
