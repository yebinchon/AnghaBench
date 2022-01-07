
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct btrfs_path {int * slots; } ;
struct btrfs_disk_key {int dummy; } ;
struct TYPE_3__ {scalar_t__ objectid; } ;


 int btrfs_comp_keys_type (struct btrfs_disk_key*,TYPE_1__*) ;
 TYPE_1__* path_current_disk_key (struct btrfs_path*) ;

__attribute__((used)) static int prev_slot(struct btrfs_disk_key *key,
                     struct btrfs_path *path)
{
    if (!path->slots[0])
        return 1;
    --path->slots[0];
    if (path_current_disk_key(path)->objectid && !btrfs_comp_keys_type(key, path_current_disk_key(path)))
        return 0;
    else
        return 1;
}
