
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_nilfs2_palloc_group_desc {int dummy; } ;
struct grub_nilfs2_data {int dummy; } ;
typedef int grub_uint32_t ;


 int NILFS2_BLOCK_SIZE (struct grub_nilfs2_data*) ;

__attribute__((used)) static inline grub_uint32_t
grub_nilfs2_palloc_groups_per_desc_block (struct grub_nilfs2_data *data)
{
  return NILFS2_BLOCK_SIZE (data) /
    sizeof (struct grub_nilfs2_palloc_group_desc);
}
