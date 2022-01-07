
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_path {int dummy; } ;
struct btrfs_disk_key {int dummy; } ;
struct TYPE_2__ {int key; } ;


 TYPE_1__* path_current_item (struct btrfs_path*) ;

__attribute__((used)) static inline const struct btrfs_disk_key *path_current_disk_key(struct btrfs_path *path)
{
    return (const struct btrfs_disk_key *) &path_current_item(path)->key;
}
