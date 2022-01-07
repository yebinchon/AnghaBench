
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_nilfs2_data {int dummy; } ;
typedef int grub_uint32_t ;


 int grub_nilfs2_blocks_per_desc_block (struct grub_nilfs2_data*,unsigned long) ;
 unsigned long grub_nilfs2_palloc_groups_per_desc_block (struct grub_nilfs2_data*) ;

__attribute__((used)) static inline grub_uint32_t
grub_nilfs2_palloc_desc_block_offset (struct grub_nilfs2_data *data,
          unsigned long group,
          unsigned long entry_size)
{
  grub_uint32_t desc_block =
    group / grub_nilfs2_palloc_groups_per_desc_block (data);
  return desc_block * grub_nilfs2_blocks_per_desc_block (data, entry_size);
}
