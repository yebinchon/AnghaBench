
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_nilfs2_data {int dummy; } ;
typedef scalar_t__ grub_uint32_t ;


 scalar_t__ grub_div_roundup (int ,int ) ;
 int grub_nilfs2_entries_per_block (struct grub_nilfs2_data*,unsigned long) ;
 int grub_nilfs2_palloc_entries_per_group (struct grub_nilfs2_data*) ;

__attribute__((used)) static inline grub_uint32_t
grub_nilfs2_blocks_per_group (struct grub_nilfs2_data *data,
         unsigned long entry_size)
{
  return grub_div_roundup (grub_nilfs2_palloc_entries_per_group (data),
      grub_nilfs2_entries_per_block (data,
         entry_size)) + 1;
}
