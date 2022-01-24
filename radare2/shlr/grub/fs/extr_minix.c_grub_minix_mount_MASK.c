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
struct grub_minix_sblock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  magic; } ;
struct grub_minix_data {int version; int filename_size; scalar_t__ linknest; int /*<<< orphan*/  disk; TYPE_1__ sblock; } ;
typedef  int /*<<< orphan*/  grub_disk_t ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_FS ; 
 scalar_t__ GRUB_MINIX2_MAGIC ; 
 scalar_t__ GRUB_MINIX2_MAGIC_30 ; 
 scalar_t__ GRUB_MINIX_MAGIC ; 
 scalar_t__ GRUB_MINIX_MAGIC_30 ; 
 int /*<<< orphan*/  GRUB_MINIX_SBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct grub_minix_data*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct grub_minix_data* FUNC4 (int) ; 

__attribute__((used)) static struct grub_minix_data *
FUNC5 (grub_disk_t disk)
{
  struct grub_minix_data *data;

  data = FUNC4 (sizeof (struct grub_minix_data));
  if (!data)
    return 0;

  /* Read the superblock.  */
  FUNC0 (disk, GRUB_MINIX_SBLOCK, 0,
		  sizeof (struct grub_minix_sblock),&data->sblock);
  if (grub_errno)
    goto fail;

  if (FUNC3 (data->sblock.magic) == GRUB_MINIX_MAGIC)
    {
      data->version = 1;
      data->filename_size = 14;
    }
  else if (FUNC3 (data->sblock.magic) == GRUB_MINIX2_MAGIC)
    {
      data->version = 2;
      data->filename_size = 14;
    }
  else if (FUNC3 (data->sblock.magic) == GRUB_MINIX_MAGIC_30)
    {
      data->version = 1;
      data->filename_size = 30;
    }
  else if (FUNC3 (data->sblock.magic) == GRUB_MINIX2_MAGIC_30)
    {
      data->version = 2;
      data->filename_size = 30;
    }
  else
    goto fail;

  data->disk = disk;
  data->linknest = 0;

  return data;

 fail:
  FUNC2 (data);
  FUNC1 (GRUB_ERR_BAD_FS, "not a minix filesystem");
  return 0;
}