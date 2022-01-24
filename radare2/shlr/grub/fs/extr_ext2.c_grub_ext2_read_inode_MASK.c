#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct grub_ext2_sblock {int /*<<< orphan*/  inodes_per_group; } ;
struct grub_ext2_inode {int dummy; } ;
struct grub_ext2_data {int /*<<< orphan*/  disk; struct grub_ext2_sblock sblock; } ;
struct grub_ext2_block_group {int /*<<< orphan*/  inode_table_id; } ;
typedef  scalar_t__ grub_err_t ;

/* Variables and functions */
 int FUNC0 (struct grub_ext2_data*) ; 
 unsigned int FUNC1 (struct grub_ext2_data*) ; 
 scalar_t__ GRUB_ERR_BAD_FS ; 
 unsigned int FUNC2 (struct grub_ext2_data*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int,int,struct grub_ext2_inode*) ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC4 (struct grub_ext2_data*,int,struct grub_ext2_block_group*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static grub_err_t
FUNC6 (struct grub_ext2_data *data,
		      int ino, struct grub_ext2_inode *inode)
{
  struct grub_ext2_block_group blkgrp;
  struct grub_ext2_sblock *sblock = &data->sblock;
  int inodes_per_block;
  unsigned int blkno;
  unsigned int blkoff;

  /* It is easier to calculate if the first inode is 0.  */
  ino--;
  int div = FUNC5 (sblock->inodes_per_group);
  if (div < 1) {
    return grub_errno = GRUB_ERR_BAD_FS;
  }
  FUNC4 (data, ino / div, &blkgrp);
  if (grub_errno)
    return grub_errno;

  int inode_size = FUNC1 (data);
  if (inode_size < 1) {
    return grub_errno = GRUB_ERR_BAD_FS;
  }
  inodes_per_block = FUNC0 (data) / inode_size;
  if (inodes_per_block < 1) {
    return grub_errno = GRUB_ERR_BAD_FS;
  }
  blkno = (ino % FUNC5 (sblock->inodes_per_group))
    / inodes_per_block;
  blkoff = (ino % FUNC5 (sblock->inodes_per_group))
    % inodes_per_block;

  /* Read the inode.  */
  if (FUNC3 (data->disk,
		      ((FUNC5 (blkgrp.inode_table_id) + blkno)
		        << FUNC2 (data)),
		      FUNC1 (data) * blkoff,
		      sizeof (struct grub_ext2_inode), inode))
    return grub_errno;

  return 0;
}