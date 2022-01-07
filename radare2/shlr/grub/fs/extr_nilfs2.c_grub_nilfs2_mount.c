
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grub_nilfs2_super_root {int dummy; } ;
struct grub_nilfs2_super_block {int dummy; } ;
struct grub_nilfs2_segment_summary {int ss_nblocks; int s_last_pseg; } ;
struct grub_nilfs2_inode {int dummy; } ;
struct TYPE_2__ {int ino; int inode_read; int inode; struct grub_nilfs2_data* data; } ;
struct grub_nilfs2_data {int * inode; TYPE_1__ diropen; int ifile; int disk; struct grub_nilfs2_segment_summary sroot; struct grub_nilfs2_segment_summary sblock; } ;
struct grub_nilfs2_checkpoint {int cp_ifile_inode; } ;
typedef unsigned int grub_uint64_t ;
typedef int grub_uint32_t ;
typedef int grub_disk_t ;


 int GRUB_ERR_BAD_FS ;
 scalar_t__ GRUB_ERR_OUT_OF_RANGE ;
 int LOG2_NILFS2_BLOCK_SIZE (struct grub_nilfs2_data*) ;
 int grub_disk_read (int ,unsigned int,int ,int,struct grub_nilfs2_segment_summary*) ;
 scalar_t__ grub_errno ;
 int grub_error (int ,char*) ;
 int grub_free (struct grub_nilfs2_data*) ;
 int grub_le_to_cpu32 (int ) ;
 unsigned int grub_le_to_cpu64 (int ) ;
 struct grub_nilfs2_data* grub_malloc (int) ;
 int grub_memcpy (int *,int *,int) ;
 int grub_nilfs2_read_inode (struct grub_nilfs2_data*,int,int *) ;
 int grub_nilfs2_read_last_checkpoint (struct grub_nilfs2_data*,struct grub_nilfs2_checkpoint*) ;
 int grub_nilfs2_valid_sb (struct grub_nilfs2_segment_summary*) ;

__attribute__((used)) static struct grub_nilfs2_data *
grub_nilfs2_mount (grub_disk_t disk)
{
  struct grub_nilfs2_data *data;
  struct grub_nilfs2_segment_summary ss;
  struct grub_nilfs2_checkpoint last_checkpoint;
  grub_uint64_t last_pseg;
  grub_uint32_t nblocks;
  unsigned int nilfs2_block_count;

  data = grub_malloc (sizeof (struct grub_nilfs2_data));
  if (!data)
    return 0;


  grub_disk_read (disk, 1 * 2, 0, sizeof (struct grub_nilfs2_super_block),
    &data->sblock);
  if (grub_errno)
    goto fail;


  if (!grub_nilfs2_valid_sb (&data->sblock))
    {
      grub_error (GRUB_ERR_BAD_FS, "not a nilfs2 filesystem");
      goto fail;
    }

  nilfs2_block_count = (1 << LOG2_NILFS2_BLOCK_SIZE (data));


  last_pseg = grub_le_to_cpu64 (data->sblock.s_last_pseg);
  grub_disk_read (disk, last_pseg * nilfs2_block_count, 0,
    sizeof (struct grub_nilfs2_segment_summary), &ss);

  if (grub_errno)
    goto fail;


  nblocks = grub_le_to_cpu32 (ss.ss_nblocks);
  grub_disk_read (disk, (last_pseg + (nblocks - 1)) * nilfs2_block_count, 0,
    sizeof (struct grub_nilfs2_super_root), &data->sroot);

  if (grub_errno)
    goto fail;

  data->disk = disk;

  grub_nilfs2_read_last_checkpoint (data, &last_checkpoint);

  if (grub_errno)
    goto fail;

  grub_memcpy (&data->ifile, &last_checkpoint.cp_ifile_inode,
        sizeof (struct grub_nilfs2_inode));

  data->diropen.data = data;
  data->diropen.ino = 2;
  data->diropen.inode_read = 1;
  data->inode = &data->diropen.inode;

  grub_nilfs2_read_inode (data, 2, data->inode);

  return data;

fail:
  if (grub_errno == GRUB_ERR_OUT_OF_RANGE)
    grub_error (GRUB_ERR_BAD_FS, "not a nilfs2 filesystem");

  grub_free (data);
  return 0;
}
