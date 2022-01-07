
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_nilfs2_data {int disk; } ;
typedef unsigned int grub_uint64_t ;
typedef int grub_disk_t ;


 int LOG2_NILFS2_BLOCK_SIZE (struct grub_nilfs2_data*) ;
 int NILFS2_BLOCK_SIZE (struct grub_nilfs2_data*) ;
 int grub_disk_read (int ,unsigned int,int ,int ,void*) ;

__attribute__((used)) static inline int
grub_nilfs2_btree_get_nonroot_node (struct grub_nilfs2_data *data,
        grub_uint64_t ptr, void *block)
{
  grub_disk_t disk = data->disk;
  unsigned int nilfs2_block_count = (1 << LOG2_NILFS2_BLOCK_SIZE (data));

  return grub_disk_read (disk, ptr * nilfs2_block_count, 0,
    NILFS2_BLOCK_SIZE (data), block);
}
