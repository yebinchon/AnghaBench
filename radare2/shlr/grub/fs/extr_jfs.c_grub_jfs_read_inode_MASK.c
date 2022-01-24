#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct grub_jfs_inode {TYPE_1__* inodes; } ;
struct grub_jfs_iag {TYPE_1__* inodes; } ;
struct TYPE_4__ {int /*<<< orphan*/  log2_blksz; } ;
struct grub_jfs_data {int /*<<< orphan*/  disk; TYPE_2__ sblock; int /*<<< orphan*/  fileset; } ;
typedef  int grub_uint32_t ;
typedef  scalar_t__ grub_err_t ;
struct TYPE_3__ {int /*<<< orphan*/  blk2; } ;

/* Variables and functions */
 int GRUB_DISK_SECTOR_BITS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,struct grub_jfs_inode*) ; 
 scalar_t__ grub_errno ; 
 int FUNC1 (struct grub_jfs_data*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static grub_err_t
FUNC4 (struct grub_jfs_data *data, int ino,
		     struct grub_jfs_inode *inode)
{
  struct grub_jfs_iag iag;
  int iagnum = ino / 4096;
  int inoext = (ino % 4096) / 32;
  int inonum = (ino % 4096) % 32;
  grub_uint32_t iagblk;
  grub_uint32_t inoblk;

  iagblk = FUNC1 (data, &data->fileset, iagnum + 1);
  if (grub_errno)
    return grub_errno;

  /* Read in the IAG.  */
  if (FUNC0 (data->disk,
		      iagblk << (FUNC2 (data->sblock.log2_blksz)
				 - GRUB_DISK_SECTOR_BITS), 0,
		      sizeof (struct grub_jfs_iag), &iag))
    return grub_errno;

  inoblk = FUNC3 (iag.inodes[inoext].blk2);
  inoblk <<= (FUNC2 (data->sblock.log2_blksz)
	      - GRUB_DISK_SECTOR_BITS);
  inoblk += inonum;

  if (FUNC0 (data->disk, inoblk, 0,
		      sizeof (struct grub_jfs_inode), inode))
    return grub_errno;

  return 0;
}