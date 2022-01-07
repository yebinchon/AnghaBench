
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct grub_jfs_inode {TYPE_1__* inodes; } ;
struct grub_jfs_iag {TYPE_1__* inodes; } ;
struct TYPE_4__ {int log2_blksz; } ;
struct grub_jfs_data {int disk; TYPE_2__ sblock; int fileset; } ;
typedef int grub_uint32_t ;
typedef scalar_t__ grub_err_t ;
struct TYPE_3__ {int blk2; } ;


 int GRUB_DISK_SECTOR_BITS ;
 scalar_t__ grub_disk_read (int ,int,int ,int,struct grub_jfs_inode*) ;
 scalar_t__ grub_errno ;
 int grub_jfs_blkno (struct grub_jfs_data*,int *,int) ;
 int grub_le_to_cpu16 (int ) ;
 int grub_le_to_cpu32 (int ) ;

__attribute__((used)) static grub_err_t
grub_jfs_read_inode (struct grub_jfs_data *data, int ino,
       struct grub_jfs_inode *inode)
{
  struct grub_jfs_iag iag;
  int iagnum = ino / 4096;
  int inoext = (ino % 4096) / 32;
  int inonum = (ino % 4096) % 32;
  grub_uint32_t iagblk;
  grub_uint32_t inoblk;

  iagblk = grub_jfs_blkno (data, &data->fileset, iagnum + 1);
  if (grub_errno)
    return grub_errno;


  if (grub_disk_read (data->disk,
        iagblk << (grub_le_to_cpu16 (data->sblock.log2_blksz)
     - GRUB_DISK_SECTOR_BITS), 0,
        sizeof (struct grub_jfs_iag), &iag))
    return grub_errno;

  inoblk = grub_le_to_cpu32 (iag.inodes[inoext].blk2);
  inoblk <<= (grub_le_to_cpu16 (data->sblock.log2_blksz)
       - GRUB_DISK_SECTOR_BITS);
  inoblk += inonum;

  if (grub_disk_read (data->disk, inoblk, 0,
        sizeof (struct grub_jfs_inode), inode))
    return grub_errno;

  return 0;
}
