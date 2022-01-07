
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int log2_blksz; } ;
struct grub_ufs_data {int disk; int be; TYPE_1__ sblock; } ;
typedef int indir ;
typedef int grub_uint64_t ;
typedef int grub_uint32_t ;
typedef int grub_disk_addr_t ;


 int GRUB_ERR_NOT_IMPLEMENTED_YET ;
 unsigned int GRUB_UFS_DIRBLKS ;
 int INODE_BLKSZ ;
 int INODE_DIRBLOCKS (struct grub_ufs_data*,unsigned int) ;
 int INODE_INDIRBLOCKS (struct grub_ufs_data*,int) ;
 int UFS_BLKSZ (struct grub_ufs_data*) ;
 int grub_disk_read (int ,int,int ,int,int*) ;
 int grub_error (int ,char*) ;
 void* grub_malloc (int) ;
 int grub_num_to_cpu32 (int ,int ) ;

__attribute__((used)) static grub_disk_addr_t
grub_ufs_get_file_block (struct grub_ufs_data *data, unsigned int blk)
{
  int blksz = UFS_BLKSZ (data);
  unsigned int indirsz;
  int log2_blksz;


  if (blk < GRUB_UFS_DIRBLKS)
    return INODE_DIRBLOCKS (data, blk);

  log2_blksz = grub_num_to_cpu32 (data->sblock.log2_blksz, data->be);

  blk -= GRUB_UFS_DIRBLKS;

  indirsz = blksz / INODE_BLKSZ;

  if (blk < indirsz)
    {
   grub_uint32_t indir[blksz / sizeof (grub_uint32_t)];




   grub_disk_read (data->disk, INODE_INDIRBLOCKS (data, 0) << log2_blksz,
        0, sizeof (indir), indir);
      return indir[blk];
    }
  blk -= indirsz;


  if (blk < indirsz * indirsz)
    {
   grub_uint32_t indir[blksz / sizeof (grub_uint32_t)];





      grub_disk_read (data->disk, INODE_INDIRBLOCKS (data, 1) << log2_blksz,
        0, sizeof (indir), indir);
      grub_disk_read (data->disk,
        (indir [blk / indirsz])
        << log2_blksz,
        0, sizeof (indir), indir);

      return indir[blk % indirsz];
    }


  grub_error (GRUB_ERR_NOT_IMPLEMENTED_YET,
       "ufs does not support triple indirect blocks");
  return 0;
}
