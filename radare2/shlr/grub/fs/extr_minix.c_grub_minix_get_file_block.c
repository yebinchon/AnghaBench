
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_minix_sblock {int dummy; } ;
struct grub_minix_data {struct grub_minix_sblock sblock; } ;


 int GRUB_ERR_OUT_OF_RANGE ;
 unsigned int GRUB_MINIX_INODE_BLKSZ (struct grub_minix_data*) ;
 int GRUB_MINIX_INODE_DINDIR_ZONE (struct grub_minix_data*) ;
 int GRUB_MINIX_INODE_DIR_ZONES (struct grub_minix_data*,unsigned int) ;
 int GRUB_MINIX_INODE_INDIR_ZONE (struct grub_minix_data*) ;
 unsigned int GRUB_MINIX_ZONESZ ;
 int grub_error (int ,char*) ;
 int grub_get_indir (int,unsigned int,struct grub_minix_data*) ;

__attribute__((used)) static int
grub_minix_get_file_block (struct grub_minix_data *data, unsigned int blk)
{
  struct grub_minix_sblock *sblock = &data->sblock;
  int indir;


  if (blk < 7)
    return GRUB_MINIX_INODE_DIR_ZONES (data, blk);


  blk -= 7;
  if (blk < GRUB_MINIX_ZONESZ / GRUB_MINIX_INODE_BLKSZ (data))
    {
      indir = grub_get_indir (GRUB_MINIX_INODE_INDIR_ZONE (data), blk, data);
      return indir;
    }


  blk -= GRUB_MINIX_ZONESZ / GRUB_MINIX_INODE_BLKSZ (data);
  if (blk < (GRUB_MINIX_ZONESZ / GRUB_MINIX_INODE_BLKSZ (data))
      * (GRUB_MINIX_ZONESZ / GRUB_MINIX_INODE_BLKSZ (data)))
    {
      indir = grub_get_indir (GRUB_MINIX_INODE_DINDIR_ZONE (data),
         blk / GRUB_MINIX_ZONESZ, data);

      indir = grub_get_indir (indir, blk % GRUB_MINIX_ZONESZ, data);

      return indir;
    }


  grub_error (GRUB_ERR_OUT_OF_RANGE, "file bigger than maximum size");

  return 0;
}
