
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sr_cpfile; } ;
struct grub_nilfs2_data {TYPE_1__ sroot; int disk; } ;
struct grub_nilfs2_checkpoint {int dummy; } ;
typedef unsigned int grub_uint64_t ;
typedef int grub_uint32_t ;
typedef int grub_err_t ;
typedef int grub_disk_t ;


 int GRUB_ERR_BAD_FS ;
 int LOG2_NILFS2_BLOCK_SIZE (struct grub_nilfs2_data*) ;
 int NILFS2_BLOCK_SIZE (struct grub_nilfs2_data*) ;
 int grub_disk_read (int ,unsigned int,int,int,struct grub_nilfs2_checkpoint*) ;
 unsigned int grub_divmod64 (unsigned int,int,int*) ;
 int grub_error (int ,char*) ;
 unsigned int grub_nilfs2_bmap_lookup (struct grub_nilfs2_data*,int *,unsigned int,int) ;

__attribute__((used)) static grub_err_t
grub_nilfs2_read_checkpoint (struct grub_nilfs2_data *data,
        grub_uint64_t cpno,
        struct grub_nilfs2_checkpoint *cpp)
{
  grub_uint64_t blockno;
  grub_uint32_t offset;
  grub_uint64_t pptr;
  grub_disk_t disk = data->disk;
  unsigned int nilfs2_block_count = (1 << LOG2_NILFS2_BLOCK_SIZE (data));




  blockno = grub_divmod64 (cpno, NILFS2_BLOCK_SIZE (data) /
      sizeof (struct grub_nilfs2_checkpoint), &offset);

  pptr = grub_nilfs2_bmap_lookup (data, &data->sroot.sr_cpfile, blockno, 1);
  if (pptr == (grub_uint64_t) - 1)
    {
      return grub_error (GRUB_ERR_BAD_FS, "btree lookup failure");
    }

  return grub_disk_read (disk, pptr * nilfs2_block_count,
    offset * sizeof (struct grub_nilfs2_checkpoint),
    sizeof (struct grub_nilfs2_checkpoint), cpp);
}
