#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct grub_nilfs2_super_root {int dummy; } ;
struct grub_nilfs2_super_block {int dummy; } ;
struct grub_nilfs2_segment_summary {int /*<<< orphan*/  ss_nblocks; int /*<<< orphan*/  s_last_pseg; } ;
struct grub_nilfs2_inode {int dummy; } ;
struct TYPE_2__ {int ino; int inode_read; int /*<<< orphan*/  inode; struct grub_nilfs2_data* data; } ;
struct grub_nilfs2_data {int /*<<< orphan*/ * inode; TYPE_1__ diropen; int /*<<< orphan*/  ifile; int /*<<< orphan*/  disk; struct grub_nilfs2_segment_summary sroot; struct grub_nilfs2_segment_summary sblock; } ;
struct grub_nilfs2_checkpoint {int /*<<< orphan*/  cp_ifile_inode; } ;
typedef  unsigned int grub_uint64_t ;
typedef  int grub_uint32_t ;
typedef  int /*<<< orphan*/  grub_disk_t ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_FS ; 
 scalar_t__ GRUB_ERR_OUT_OF_RANGE ; 
 int FUNC0 (struct grub_nilfs2_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int,struct grub_nilfs2_segment_summary*) ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct grub_nilfs2_data*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 struct grub_nilfs2_data* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct grub_nilfs2_data*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct grub_nilfs2_data*,struct grub_nilfs2_checkpoint*) ; 
 int /*<<< orphan*/  FUNC10 (struct grub_nilfs2_segment_summary*) ; 

__attribute__((used)) static struct grub_nilfs2_data *
FUNC11 (grub_disk_t disk)
{
  struct grub_nilfs2_data *data;
  struct grub_nilfs2_segment_summary ss;
  struct grub_nilfs2_checkpoint last_checkpoint;
  grub_uint64_t last_pseg;
  grub_uint32_t nblocks;
  unsigned int nilfs2_block_count;

  data = FUNC6 (sizeof (struct grub_nilfs2_data));
  if (!data)
    return 0;

  /* Read the superblock.  */
  FUNC1 (disk, 1 * 2, 0, sizeof (struct grub_nilfs2_super_block),
		  &data->sblock);
  if (grub_errno)
    goto fail;

  /* Make sure this is an nilfs2 filesystem.  */
  if (!FUNC10 (&data->sblock))
    {
      FUNC2 (GRUB_ERR_BAD_FS, "not a nilfs2 filesystem");
      goto fail;
    }

  nilfs2_block_count = (1 << FUNC0 (data));

  /* Read the last segment summary. */
  last_pseg = FUNC5 (data->sblock.s_last_pseg);
  FUNC1 (disk, last_pseg * nilfs2_block_count, 0,
		  sizeof (struct grub_nilfs2_segment_summary), &ss);

  if (grub_errno)
    goto fail;

  /* Read the super root block. */
  nblocks = FUNC4 (ss.ss_nblocks);
  FUNC1 (disk, (last_pseg + (nblocks - 1)) * nilfs2_block_count, 0,
		  sizeof (struct grub_nilfs2_super_root), &data->sroot);

  if (grub_errno)
    goto fail;

  data->disk = disk;

  FUNC9 (data, &last_checkpoint);

  if (grub_errno)
    goto fail;

  FUNC7 (&data->ifile, &last_checkpoint.cp_ifile_inode,
	       sizeof (struct grub_nilfs2_inode));

  data->diropen.data = data;
  data->diropen.ino = 2;
  data->diropen.inode_read = 1;
  data->inode = &data->diropen.inode;

  FUNC8 (data, 2, data->inode);

  return data;

fail:
  if (grub_errno == GRUB_ERR_OUT_OF_RANGE)
    FUNC2 (GRUB_ERR_BAD_FS, "not a nilfs2 filesystem");

  FUNC3 (data);
  return 0;
}