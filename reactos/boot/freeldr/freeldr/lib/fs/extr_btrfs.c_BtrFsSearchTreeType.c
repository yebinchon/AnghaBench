
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct btrfs_root_item {int level; int bytenr; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_disk_key {scalar_t__ offset; int type; int objectid; } ;
struct TYPE_3__ {scalar_t__ objectid; } ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;
 int _BtrFsSearchTree (int ,int ,struct btrfs_disk_key*,struct btrfs_path*) ;
 int btrfs_comp_keys_type (struct btrfs_disk_key*,TYPE_1__*) ;
 TYPE_1__* path_current_disk_key (struct btrfs_path*) ;

__attribute__((used)) static inline BOOLEAN
BtrFsSearchTreeType(const struct btrfs_root_item *root, u64 objectid, u8 type, struct btrfs_path *path)
{
    struct btrfs_disk_key key;

    key.objectid = objectid;
    key.type = type;
    key.offset = 0;

    _BtrFsSearchTree(root->bytenr, root->level, &key, path);

    if (path_current_disk_key(path)->objectid && !btrfs_comp_keys_type(&key, path_current_disk_key(path)))
        return TRUE;
    else
        return FALSE;
}
