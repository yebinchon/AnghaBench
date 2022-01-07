
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_disk_key {scalar_t__ objectid; scalar_t__ type; } ;



__attribute__((used)) static int btrfs_comp_keys_type(const struct btrfs_disk_key *k1,
                                const struct btrfs_disk_key *k2)
{
    if (k1->objectid > k2->objectid)
        return 1;
    if (k1->objectid < k2->objectid)
        return -1;
    if (k1->type > k2->type)
        return 1;
    if (k1->type < k2->type)
        return -1;
    return 0;
}
