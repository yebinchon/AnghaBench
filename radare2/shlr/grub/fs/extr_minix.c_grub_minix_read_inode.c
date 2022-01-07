
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_minix_sblock {int zone_bmap_size; int inode_bmap_size; } ;
struct grub_minix_inode {int dummy; } ;
struct grub_minix_data {int ino; int version; int inode2; int disk; int inode; struct grub_minix_sblock sblock; } ;
struct grub_minix2_inode {int dummy; } ;
typedef int grub_err_t ;


 int GRUB_DISK_SECTOR_SIZE ;
 int GRUB_ERR_NONE ;
 int GRUB_MINIX_LOG2_BSIZE ;
 int grub_disk_read (int ,int,int,int,int *) ;
 int grub_le_to_cpu16 (int ) ;

__attribute__((used)) static grub_err_t
grub_minix_read_inode (struct grub_minix_data *data, int ino)
{
  struct grub_minix_sblock *sblock = &data->sblock;


  int block;
  data->ino = ino;


  ino--;

  block = ((2 + grub_le_to_cpu16 (sblock->inode_bmap_size)
     + grub_le_to_cpu16 (sblock->zone_bmap_size))
    << GRUB_MINIX_LOG2_BSIZE);

  if (data->version == 1)
    {
      block += ino / (GRUB_DISK_SECTOR_SIZE / sizeof (struct grub_minix_inode));
      int offs = (ino % (GRUB_DISK_SECTOR_SIZE
    / sizeof (struct grub_minix_inode))
    * sizeof (struct grub_minix_inode));

      grub_disk_read (data->disk, block, offs,
        sizeof (struct grub_minix_inode), &data->inode);
    }
  else
    {
      block += ino / (GRUB_DISK_SECTOR_SIZE
        / sizeof (struct grub_minix2_inode));
      int offs = (ino
    % (GRUB_DISK_SECTOR_SIZE / sizeof (struct grub_minix2_inode))
    * sizeof (struct grub_minix2_inode));

      grub_disk_read (data->disk, block, offs,
        sizeof (struct grub_minix2_inode),&data->inode2);
    }

  return GRUB_ERR_NONE;
}
