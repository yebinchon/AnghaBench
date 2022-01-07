
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct btrfs_path {int dummy; } ;
struct btrfs_dir_item {int name_len; int data_len; } ;
struct TYPE_2__ {scalar_t__ size; } ;


 int memcmp (char const*,char const*,int) ;
 scalar_t__ path_current_data (struct btrfs_path*) ;
 TYPE_1__* path_current_item (struct btrfs_path*) ;
 scalar_t__ verify_dir_item (struct btrfs_dir_item*,scalar_t__,scalar_t__) ;

__attribute__((used)) static struct btrfs_dir_item *BtrFsMatchDirItemName(struct btrfs_path *path, const char *name, int name_len)
{
    struct btrfs_dir_item *item = (struct btrfs_dir_item *) path_current_data(path);
    u32 cur = 0, this_len;
    const char *name_ptr;

    while (cur < path_current_item(path)->size)
    {
        this_len = sizeof(*item) + item->name_len + item->data_len;
        name_ptr = (const char *) item + sizeof(*item);

        if (verify_dir_item(item, cur, this_len))
            return ((void*)0);
        if (item->name_len == name_len && !memcmp(name_ptr, name, name_len))
            return item;

        cur += this_len;
        item = (struct btrfs_dir_item *) ((u8 *) item + this_len);
    }

    return ((void*)0);
}
