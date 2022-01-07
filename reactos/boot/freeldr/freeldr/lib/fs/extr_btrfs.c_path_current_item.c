
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct btrfs_path {size_t* slots; TYPE_2__* tree_buf; } ;
struct btrfs_item {int dummy; } ;
struct TYPE_3__ {struct btrfs_item* items; } ;
struct TYPE_4__ {TYPE_1__ leaf; } ;



__attribute__((used)) static inline struct btrfs_item *path_current_item(struct btrfs_path *path)
{
    return &path->tree_buf->leaf.items[path->slots[0]];
}
