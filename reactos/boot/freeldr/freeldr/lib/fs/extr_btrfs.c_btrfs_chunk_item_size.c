
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_stripe {int dummy; } ;
struct btrfs_chunk {int dummy; } ;



__attribute__((used)) static inline unsigned long btrfs_chunk_item_size(int num_stripes)
{
    return sizeof(struct btrfs_chunk) +
           sizeof(struct btrfs_stripe) * (num_stripes - 1);
}
