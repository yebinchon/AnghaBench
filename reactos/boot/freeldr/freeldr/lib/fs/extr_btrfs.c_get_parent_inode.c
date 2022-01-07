
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_root_item {int dummy; } ;
struct btrfs_inode_item {int dummy; } ;
struct btrfs_disk_key {scalar_t__ offset; void* type; scalar_t__ objectid; } ;


 scalar_t__ BTRFS_FIRST_FREE_OBJECTID ;
 void* BTRFS_INODE_ITEM_KEY ;
 scalar_t__ INVALID_INODE ;
 scalar_t__ btrfs_lookup_inode (struct btrfs_root_item const*,struct btrfs_disk_key*,struct btrfs_inode_item*,int *) ;
 scalar_t__ btrfs_lookup_inode_ref (struct btrfs_root_item const*,scalar_t__,int *,int *) ;

__attribute__((used)) static u64 get_parent_inode(const struct btrfs_root_item *root, u64 inr,
                            struct btrfs_inode_item *inode_item)
{
    struct btrfs_disk_key key;
    u64 res;

    if (inr == BTRFS_FIRST_FREE_OBJECTID)
    {
        if (inode_item)
        {
            key.objectid = inr;
            key.type = BTRFS_INODE_ITEM_KEY;
            key.offset = 0;

            if (btrfs_lookup_inode(root, &key, inode_item, ((void*)0)))
                return INVALID_INODE;
        }

        return inr;
    }

    res = btrfs_lookup_inode_ref(root, inr, ((void*)0), ((void*)0));
    if (res == INVALID_INODE)
        return INVALID_INODE;

    if (inode_item)
    {
        key.objectid = res;
        key.type = BTRFS_INODE_ITEM_KEY;
        key.offset = 0;

        if (btrfs_lookup_inode(root, &key, inode_item, ((void*)0)))
            return INVALID_INODE;
    }

    return res;
}
