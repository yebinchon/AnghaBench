
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct btrfs_dir_item {scalar_t__ type; int name_len; } ;
typedef int BOOLEAN ;


 scalar_t__ BTRFS_FT_MAX ;
 scalar_t__ BTRFS_FT_XATTR ;
 int BTRFS_NAME_MAX ;
 int ERR (char*,int) ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOLEAN verify_dir_item(struct btrfs_dir_item *item, u32 start, u32 total)
{
    u16 max_len = BTRFS_NAME_MAX;
    u32 end;

    if (item->type >= BTRFS_FT_MAX)
    {
        ERR("Invalid dir item type: %i\n", item->type);
        return TRUE;
    }

    if (item->type == BTRFS_FT_XATTR)
        max_len = 255;

    end = start + sizeof(*item) + item->name_len;
    if (item->name_len > max_len || end > total)
    {
        ERR("Invalid dir item name len: %u\n", item->name_len);
        return TRUE;
    }

    return FALSE;
}
