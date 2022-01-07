
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grub_afs_inode {int dummy; } ;
struct TYPE_2__ {int block_size; } ;
struct grub_afs_data {TYPE_1__ sblock; int disk; } ;
typedef int grub_uint32_t ;
typedef int grub_err_t ;


 int GRUB_DISK_SECTOR_BITS ;
 int grub_disk_read (int ,int,int ,int,struct grub_afs_inode*) ;

__attribute__((used)) static grub_err_t
grub_afs_read_inode (struct grub_afs_data *data,
                     grub_uint32_t ino, struct grub_afs_inode *inode)
{
  return grub_disk_read (data->disk,
                         ino *
                         (data->sblock.block_size >> GRUB_DISK_SECTOR_BITS),
                         0, sizeof (struct grub_afs_inode),
                         inode);
}
