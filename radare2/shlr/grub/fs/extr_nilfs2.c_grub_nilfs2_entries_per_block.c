
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_nilfs2_data {int dummy; } ;
typedef unsigned long grub_uint32_t ;


 unsigned long NILFS2_BLOCK_SIZE (struct grub_nilfs2_data*) ;

__attribute__((used)) static inline grub_uint32_t
grub_nilfs2_entries_per_block (struct grub_nilfs2_data *data,
          unsigned long entry_size)
{
  return NILFS2_BLOCK_SIZE (data) / entry_size;
}
