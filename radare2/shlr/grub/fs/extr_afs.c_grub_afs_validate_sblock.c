
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct grub_afs_sblock {int magic1; int magic2; int magic3; int block_shift; int block_size; int used_blocks; int num_blocks; int inode_size; int alloc_group_count; int alloc_group_shift; int block_per_group; int log_size; int valid_log_blocks; TYPE_1__ log_block; } ;
typedef int grub_uint32_t ;


 scalar_t__ GRUB_AFS_SBLOCK_MAGIC1 ;
 scalar_t__ GRUB_AFS_SBLOCK_MAGIC2 ;
 scalar_t__ GRUB_AFS_SBLOCK_MAGIC3 ;
 scalar_t__ grub_afs_to_cpu16 (int ) ;
 scalar_t__ grub_afs_to_cpu32 (int) ;
 void* grub_afs_to_cpu64 (int) ;

__attribute__((used)) static int
grub_afs_validate_sblock (struct grub_afs_sblock *sb)
{
  if (grub_afs_to_cpu32 (sb->magic1) == GRUB_AFS_SBLOCK_MAGIC1)
    {
      sb->magic2 = grub_afs_to_cpu32 (sb->magic2);
      sb->magic3 = grub_afs_to_cpu32 (sb->magic3);
      sb->block_shift = grub_afs_to_cpu32 (sb->block_shift);
      sb->block_size = grub_afs_to_cpu32 (sb->block_size);
      sb->used_blocks = grub_afs_to_cpu64 (sb->used_blocks);
      sb->num_blocks = grub_afs_to_cpu64 (sb->num_blocks);
      sb->inode_size = grub_afs_to_cpu32 (sb->inode_size);
      sb->alloc_group_count = grub_afs_to_cpu32 (sb->alloc_group_count);
      sb->alloc_group_shift = grub_afs_to_cpu32 (sb->alloc_group_shift);
      sb->block_per_group = grub_afs_to_cpu32 (sb->block_per_group);
      sb->alloc_group_count = grub_afs_to_cpu32 (sb->alloc_group_count);
      sb->log_size = grub_afs_to_cpu32 (sb->log_size);
    }
  else
    return 0;

  if ((sb->magic2 != GRUB_AFS_SBLOCK_MAGIC2) ||
      (sb->magic3 != GRUB_AFS_SBLOCK_MAGIC3))
    return 0;





  if (((grub_uint32_t) (1 << sb->block_shift) != sb->block_size)
      || (sb->used_blocks > sb->num_blocks )
      || (sb->inode_size != sb->block_size)
      || (0 == sb->block_size)

      || ((grub_uint32_t) (1 << sb->alloc_group_shift) !=
   sb->block_per_group * sb->block_size)
      || (sb->alloc_group_count * sb->block_per_group < sb->num_blocks)
      || (grub_afs_to_cpu16 (sb->log_block.len) != sb->log_size)
      || (grub_afs_to_cpu32 (sb->valid_log_blocks) > sb->log_size)

      )
    return 0;

  return 1;
}
