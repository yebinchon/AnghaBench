
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_ext2_sblock {int inodes_per_group; } ;
struct grub_ext2_inode {int dummy; } ;
struct grub_ext2_data {int disk; struct grub_ext2_sblock sblock; } ;
struct grub_ext2_block_group {int inode_table_id; } ;
typedef scalar_t__ grub_err_t ;


 int EXT2_BLOCK_SIZE (struct grub_ext2_data*) ;
 unsigned int EXT2_INODE_SIZE (struct grub_ext2_data*) ;
 scalar_t__ GRUB_ERR_BAD_FS ;
 unsigned int LOG2_EXT2_BLOCK_SIZE (struct grub_ext2_data*) ;
 scalar_t__ grub_disk_read (int ,unsigned int,unsigned int,int,struct grub_ext2_inode*) ;
 scalar_t__ grub_errno ;
 int grub_ext2_blockgroup (struct grub_ext2_data*,int,struct grub_ext2_block_group*) ;
 unsigned int grub_le_to_cpu32 (int ) ;

__attribute__((used)) static grub_err_t
grub_ext2_read_inode (struct grub_ext2_data *data,
        int ino, struct grub_ext2_inode *inode)
{
  struct grub_ext2_block_group blkgrp;
  struct grub_ext2_sblock *sblock = &data->sblock;
  int inodes_per_block;
  unsigned int blkno;
  unsigned int blkoff;


  ino--;
  int div = grub_le_to_cpu32 (sblock->inodes_per_group);
  if (div < 1) {
    return grub_errno = GRUB_ERR_BAD_FS;
  }
  grub_ext2_blockgroup (data, ino / div, &blkgrp);
  if (grub_errno)
    return grub_errno;

  int inode_size = EXT2_INODE_SIZE (data);
  if (inode_size < 1) {
    return grub_errno = GRUB_ERR_BAD_FS;
  }
  inodes_per_block = EXT2_BLOCK_SIZE (data) / inode_size;
  if (inodes_per_block < 1) {
    return grub_errno = GRUB_ERR_BAD_FS;
  }
  blkno = (ino % grub_le_to_cpu32 (sblock->inodes_per_group))
    / inodes_per_block;
  blkoff = (ino % grub_le_to_cpu32 (sblock->inodes_per_group))
    % inodes_per_block;


  if (grub_disk_read (data->disk,
        ((grub_le_to_cpu32 (blkgrp.inode_table_id) + blkno)
          << LOG2_EXT2_BLOCK_SIZE (data)),
        EXT2_INODE_SIZE (data) * blkoff,
        sizeof (struct grub_ext2_inode), inode))
    return grub_errno;

  return 0;
}
