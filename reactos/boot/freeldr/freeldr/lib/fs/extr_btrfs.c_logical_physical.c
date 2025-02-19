
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct btrfs_chunk_map_item {scalar_t__ logical; } ;
struct btrfs_chunk_map {TYPE_1__* map; int cur_length; } ;
typedef int cmp_func ;
struct TYPE_4__ {struct btrfs_chunk_map ChunkMap; } ;
struct TYPE_3__ {scalar_t__ logical; scalar_t__ length; scalar_t__ physical; } ;


 TYPE_2__* BtrFsInfo ;
 scalar_t__ INVALID_ADDRESS ;
 int TRACE (char*,scalar_t__,scalar_t__) ;
 int bin_search (TYPE_1__*,int,struct btrfs_chunk_map_item*,int ,int ,int ,int*) ;
 scalar_t__ btrfs_comp_chunk_map ;

__attribute__((used)) static u64 logical_physical(u64 logical)
{
    struct btrfs_chunk_map *chunk_map = &BtrFsInfo->ChunkMap;
    struct btrfs_chunk_map_item item;
    int slot, ret;

    item.logical = logical;
    ret = bin_search(chunk_map->map, sizeof(chunk_map->map[0]), &item,
                     (cmp_func) btrfs_comp_chunk_map, 0,
                     chunk_map->cur_length, &slot);
    if (ret == 0)
        slot++;
    else if (slot == 0)
        return INVALID_ADDRESS;
    if (logical >= chunk_map->map[slot - 1].logical + chunk_map->map[slot - 1].length)
        return INVALID_ADDRESS;

    TRACE("Address translation: 0x%llx -> 0x%llx\n", logical,
          chunk_map->map[slot - 1].physical + logical - chunk_map->map[slot - 1].logical);

    return chunk_map->map[slot - 1].physical + logical - chunk_map->map[slot - 1].logical;
}
