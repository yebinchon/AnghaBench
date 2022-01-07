
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grub_xfs_inode {scalar_t__ magic; } ;
struct TYPE_2__ {int log2_inode; } ;
struct grub_xfs_data {TYPE_1__ sblock; int disk; } ;
typedef int grub_uint64_t ;
typedef int grub_err_t ;


 int GRUB_ERR_BAD_FS ;
 scalar_t__ grub_disk_read (int ,int ,int,int,struct grub_xfs_inode*) ;
 int grub_errno ;
 int grub_error (int ,char*) ;
 scalar_t__ grub_strncmp (char*,char*,int) ;
 int grub_xfs_inode_block (struct grub_xfs_data*,int ) ;
 int grub_xfs_inode_offset (struct grub_xfs_data*,int ) ;

__attribute__((used)) static grub_err_t
grub_xfs_read_inode (struct grub_xfs_data *data, grub_uint64_t ino,
       struct grub_xfs_inode *inode)
{
  grub_uint64_t block = grub_xfs_inode_block (data, ino);
  int offset = grub_xfs_inode_offset (data, ino);


  if (grub_disk_read (data->disk, block, offset,
        1 << data->sblock.log2_inode, inode))
    return grub_errno;

  if (grub_strncmp ((char *) inode->magic, "IN", 2))
    return grub_error (GRUB_ERR_BAD_FS, "not a correct XFS inode");

  return 0;
}
