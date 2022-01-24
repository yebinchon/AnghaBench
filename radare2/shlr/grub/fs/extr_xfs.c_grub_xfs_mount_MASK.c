#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct grub_xfs_sblock {int dummy; } ;
struct grub_xfs_inode {int dummy; } ;
struct TYPE_3__ {int inode_read; int /*<<< orphan*/  inode; int /*<<< orphan*/  ino; struct grub_xfs_data* data; } ;
struct TYPE_4__ {int log2_inode; int /*<<< orphan*/  agsize; int /*<<< orphan*/  bsize; int /*<<< orphan*/  rootino; scalar_t__ magic; } ;
struct grub_xfs_data {TYPE_1__ diropen; scalar_t__ pos; int /*<<< orphan*/  disk; TYPE_2__ sblock; void* agsize; void* bsize; } ;
typedef  int /*<<< orphan*/  grub_disk_t ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_FS ; 
 scalar_t__ GRUB_ERR_OUT_OF_RANGE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct grub_xfs_data*) ; 
 struct grub_xfs_data* FUNC4 (struct grub_xfs_data*,int) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct grub_xfs_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct grub_xfs_data* FUNC7 (int) ; 

__attribute__((used)) static struct grub_xfs_data *
FUNC8 (grub_disk_t disk)
{
  struct grub_xfs_data *data = 0;

  data = FUNC7 (sizeof (struct grub_xfs_data));
  if (!data)
    return 0;

  /* Read the superblock.  */
  if (FUNC1 (disk, 0, 0,
		      sizeof (struct grub_xfs_sblock), &data->sblock))
    goto fail;

  if (FUNC5 ((char *) (data->sblock.magic), "XFSB", 4))
    {
      FUNC2 (GRUB_ERR_BAD_FS, "not a XFS filesystem");
      goto fail;
    }

  data = FUNC4 (data,
		       sizeof (struct grub_xfs_data)
		       - sizeof (struct grub_xfs_inode)
		       + (1 << data->sblock.log2_inode));

  if (! data)
    goto fail;

  data->diropen.data = data;
  data->diropen.ino = data->sblock.rootino;
  data->diropen.inode_read = 1;
  data->bsize = FUNC0 (data->sblock.bsize);
  data->agsize = FUNC0 (data->sblock.agsize);

  data->disk = disk;
  data->pos = 0;

  FUNC6 (data, data->diropen.ino, &data->diropen.inode);

  return data;
 fail:

  if (grub_errno == GRUB_ERR_OUT_OF_RANGE)
    FUNC2 (GRUB_ERR_BAD_FS, "not an XFS filesystem");

  FUNC3 (data);

  return 0;
}