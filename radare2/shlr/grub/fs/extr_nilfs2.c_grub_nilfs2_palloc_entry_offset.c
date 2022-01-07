
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_nilfs2_data {int dummy; } ;
typedef int grub_uint64_t ;
typedef int grub_uint32_t ;


 int grub_nilfs2_entries_per_block (struct grub_nilfs2_data*,unsigned long) ;
 int grub_nilfs2_palloc_bitmap_block_offset (struct grub_nilfs2_data*,unsigned long,unsigned long) ;
 unsigned long grub_nilfs2_palloc_group (struct grub_nilfs2_data*,int ,int*) ;

__attribute__((used)) static inline grub_uint32_t
grub_nilfs2_palloc_entry_offset (struct grub_nilfs2_data *data,
     grub_uint64_t nr, unsigned long entry_size)
{
  unsigned long group;
  grub_uint32_t group_offset;

  group = grub_nilfs2_palloc_group (data, nr, &group_offset);

  return grub_nilfs2_palloc_bitmap_block_offset (data, group,
       entry_size) + 1 +
    group_offset / grub_nilfs2_entries_per_block (data, entry_size);

}
