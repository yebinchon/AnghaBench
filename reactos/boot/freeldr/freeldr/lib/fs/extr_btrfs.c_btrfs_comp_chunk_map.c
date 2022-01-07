
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_chunk_map_item {scalar_t__ logical; } ;



__attribute__((used)) static int btrfs_comp_chunk_map(struct btrfs_chunk_map_item *m1,
                                struct btrfs_chunk_map_item *m2)
{
    if (m1->logical > m2->logical)
        return 1;
    if (m1->logical < m2->logical)
        return -1;
    return 0;
}
