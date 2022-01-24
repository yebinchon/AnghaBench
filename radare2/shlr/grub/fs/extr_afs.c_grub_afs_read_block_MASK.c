#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct grub_afs_sblock {int block_size; } ;
struct grub_afs_blockrun {int len; } ;
struct grub_afs_datastream {struct grub_afs_blockrun double_indirect; int /*<<< orphan*/  max_indirect_range; struct grub_afs_blockrun indirect; int /*<<< orphan*/  max_direct_range; struct grub_afs_blockrun* direct; } ;
typedef  int /*<<< orphan*/  indir ;
typedef  TYPE_3__* grub_fshelp_node_t ;
typedef  scalar_t__ grub_disk_addr_t ;
typedef  int grub_afs_off_t ;
struct TYPE_5__ {struct grub_afs_datastream stream; } ;
struct TYPE_7__ {TYPE_2__* data; TYPE_1__ inode; } ;
struct TYPE_6__ {int /*<<< orphan*/  disk; struct grub_afs_sblock sblock; } ;

/* Variables and functions */
 int GRUB_AFS_BLOCKS_PER_DI_RUN ; 
 int GRUB_AFS_DIRECT_BLOCK_COUNT ; 
 int GRUB_DISK_SECTOR_BITS ; 
 int FUNC0 (struct grub_afs_sblock*,struct grub_afs_blockrun*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,struct grub_afs_blockrun*) ; 

__attribute__((used)) static grub_disk_addr_t
FUNC4 (grub_fshelp_node_t node, grub_disk_addr_t fileblock)
{
  struct grub_afs_sblock *sb = &node->data->sblock;
  struct grub_afs_datastream *ds = &node->inode.stream;

  if (fileblock < FUNC2 (ds->max_direct_range))
    {
      int i;

      for (i = 0; i < GRUB_AFS_DIRECT_BLOCK_COUNT; i++)
        {
          if (fileblock < FUNC1 (ds->direct[i].len))
            return FUNC0 (sb, &ds->direct[i]) + fileblock;
          fileblock -= FUNC1 (ds->direct[i].len);
        }
    }
  else if (fileblock < FUNC2 (ds->max_indirect_range))
    {
      int ptrs_per_blk = sb->block_size / sizeof (struct grub_afs_blockrun);
      struct grub_afs_blockrun indir[ptrs_per_blk];
      grub_afs_off_t blk = FUNC0 (sb, &ds->indirect);
      int i;

      fileblock -= FUNC2 (ds->max_direct_range);
      for (i = 0; i < ds->indirect.len; i++, blk++)
        {
          int j;

          if (FUNC3 (node->data->disk,
                              blk * (sb->block_size >> GRUB_DISK_SECTOR_BITS),
                              0, sizeof (indir),
                              indir))
            return 0;

          for (j = 0; j < ptrs_per_blk; j++)
            {
              if (fileblock < FUNC1 (indir[j].len))
                return FUNC0 (sb, &indir[j]) + fileblock;

              fileblock -= FUNC1 (indir[j].len);
            }
        }
    }
  else
    {
      int ptrs_per_blk = sb->block_size / sizeof (struct grub_afs_blockrun);
      struct grub_afs_blockrun indir[ptrs_per_blk];

      /* ([idblk][idptr]) ([dblk][dptr]) [blk]  */
      int cur_pos = fileblock - FUNC2 (ds->max_indirect_range);

      int dptr_size = GRUB_AFS_BLOCKS_PER_DI_RUN;
      int dblk_size = dptr_size * ptrs_per_blk;
      int idptr_size = dblk_size * GRUB_AFS_BLOCKS_PER_DI_RUN;
      int idblk_size = idptr_size * ptrs_per_blk;

      int off = cur_pos % GRUB_AFS_BLOCKS_PER_DI_RUN;
      int dptr = (cur_pos / dptr_size) % ptrs_per_blk;
      int dblk = (cur_pos / dblk_size) % GRUB_AFS_BLOCKS_PER_DI_RUN;
      int idptr = (cur_pos / idptr_size) % ptrs_per_blk;
      int idblk = (cur_pos / idblk_size);

      if (FUNC3 (node->data->disk,
                          (FUNC0 (sb, &ds->double_indirect)
                           + idblk) *
                          (sb->block_size >> GRUB_DISK_SECTOR_BITS),
                          0, sizeof (indir),
                          indir))
        return 0;

      if (FUNC3 (node->data->disk,
                          (FUNC0 (sb, &indir[idptr]) + dblk) *
                          (sb->block_size >> GRUB_DISK_SECTOR_BITS),
                          0, sizeof (indir),
                          indir))
        return 0;

      return FUNC0 (sb, &indir[dptr]) + off;
    }

  return 0;
}