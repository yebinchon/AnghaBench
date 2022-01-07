
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_nilfs2_data {int dummy; } ;
typedef scalar_t__ grub_uint32_t ;


 unsigned long grub_nilfs2_blocks_per_group (struct grub_nilfs2_data*,unsigned long) ;
 scalar_t__ grub_nilfs2_palloc_desc_block_offset (struct grub_nilfs2_data*,unsigned long,unsigned long) ;
 unsigned long grub_nilfs2_palloc_groups_per_desc_block (struct grub_nilfs2_data*) ;

__attribute__((used)) static inline grub_uint32_t
grub_nilfs2_palloc_bitmap_block_offset (struct grub_nilfs2_data *data,
     unsigned long group,
     unsigned long entry_size)
{
  unsigned long desc_offset = group %
    grub_nilfs2_palloc_groups_per_desc_block (data);

  return grub_nilfs2_palloc_desc_block_offset (data, group, entry_size) + 1 +
    desc_offset * grub_nilfs2_blocks_per_group (data, entry_size);
}
