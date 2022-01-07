
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_nilfs2_data {int dummy; } ;


 int LOG2_BLOCK_SIZE (struct grub_nilfs2_data*) ;

__attribute__((used)) static inline unsigned long
grub_nilfs2_palloc_entries_per_group (struct grub_nilfs2_data *data)
{
  return 1UL << (LOG2_BLOCK_SIZE (data) + 3);
}
