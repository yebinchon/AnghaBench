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
struct grub_jfs_sblock {int dummy; } ;
struct grub_jfs_inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ magic; } ;
struct grub_jfs_data {TYPE_1__ fileset; int /*<<< orphan*/  disk; scalar_t__ linknest; scalar_t__ pos; TYPE_1__ sblock; } ;
typedef  int /*<<< orphan*/  grub_disk_t ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_FS ; 
 scalar_t__ GRUB_ERR_OUT_OF_RANGE ; 
 int /*<<< orphan*/  GRUB_JFS_FS1_INODE_BLK ; 
 int /*<<< orphan*/  GRUB_JFS_SBLOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct grub_jfs_data*) ; 
 struct grub_jfs_data* FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 

__attribute__((used)) static struct grub_jfs_data *
FUNC5 (grub_disk_t disk)
{
  struct grub_jfs_data *data = 0;

  data = FUNC3 (sizeof (struct grub_jfs_data));
  if (!data)
    return 0;

  /* Read the superblock.  */
  if (FUNC0 (disk, GRUB_JFS_SBLOCK, 0,
		      sizeof (struct grub_jfs_sblock), &data->sblock))
    goto fail;

  if (FUNC4 ((char *) (data->sblock.magic), "JFS1", 4))
    {
      FUNC1 (GRUB_ERR_BAD_FS, "not a JFS filesystem");
      goto fail;
    }

  data->disk = disk;
  data->pos = 0;
  data->linknest = 0;

  /* Read the inode of the first fileset.  */
  if (FUNC0 (data->disk, GRUB_JFS_FS1_INODE_BLK, 0,
		      sizeof (struct grub_jfs_inode), &data->fileset))
    goto fail;

  return data;

 fail:
  FUNC2 (data);

  if (grub_errno == GRUB_ERR_OUT_OF_RANGE)
    FUNC1 (GRUB_ERR_BAD_FS, "not a JFS filesystem");

  return 0;
}