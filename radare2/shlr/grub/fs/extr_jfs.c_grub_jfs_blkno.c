
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * extents; int tree; } ;
struct grub_jfs_inode {TYPE_1__ file; } ;
struct grub_jfs_data {int dummy; } ;
struct getblk_closure {unsigned int blk; struct grub_jfs_data* data; } ;


 int getblk (int *,int *,struct getblk_closure*) ;

__attribute__((used)) static int
grub_jfs_blkno (struct grub_jfs_data *data, struct grub_jfs_inode *inode,
  unsigned int blk)
{
  struct getblk_closure c;
  c.data = data;
  c.blk = blk;
  return getblk (&inode->file.tree, &inode->file.extents[0], &c);
}
