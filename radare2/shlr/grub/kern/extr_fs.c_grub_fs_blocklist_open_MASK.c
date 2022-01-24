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
struct grub_fs_block {int offset; int length; } ;
typedef  TYPE_2__* grub_file_t ;
typedef  scalar_t__ grub_err_t ;
typedef  TYPE_3__* grub_disk_t ;
struct TYPE_7__ {int total_sectors; } ;
struct TYPE_6__ {int size; struct grub_fs_block* data; TYPE_1__* device; } ;
struct TYPE_5__ {TYPE_3__* disk; } ;

/* Variables and functions */
 int GRUB_DISK_SECTOR_BITS ; 
 int /*<<< orphan*/  GRUB_ERR_BAD_FILENAME ; 
 scalar_t__ GRUB_ERR_NONE ; 
 int GRUB_ULONG_MAX ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct grub_fs_block*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 char* FUNC3 (char*,char) ; 
 int FUNC4 (char*,char**,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,char**,int /*<<< orphan*/ ) ; 
 struct grub_fs_block* FUNC6 (int) ; 

__attribute__((used)) static grub_err_t
FUNC7 (grub_file_t file, const char *name)
{
  char *p = (char *) name;
  unsigned num = 0;
  unsigned i;
  grub_disk_t disk = file->device->disk;
  struct grub_fs_block *blocks;

  /* First, count the number of blocks.  */
  do
    {
      num++;
      p = FUNC3 (p, ',');
      if (p)
	p++;
    }
  while (p);

  /* Allocate a block list.  */
  blocks = FUNC6 (sizeof (struct grub_fs_block) * (num + 1));
  if (! blocks)
    return 0;

  file->size = 0;
  p = (char *) name;
  if (! *p)
    {
      blocks[0].offset = 0;
      blocks[0].length = (disk->total_sectors == GRUB_ULONG_MAX) ?
	GRUB_ULONG_MAX : (disk->total_sectors << 9);
      file->size = blocks[0].length;
    }
  else for (i = 0; i < num; i++)
    {
      if (*p != '+')
	{
	  blocks[i].offset = FUNC5 (p, &p, 0);
	  if (grub_errno != GRUB_ERR_NONE || *p != '+')
	    {
	      FUNC0 (GRUB_ERR_BAD_FILENAME,
			  "invalid file name `%s'", name);
	      goto fail;
	    }
	}

      p++;
      blocks[i].length = FUNC4 (p, &p, 0);
      if (grub_errno != GRUB_ERR_NONE
	  || blocks[i].length == 0
	  || (*p && *p != ',' && ! FUNC2 (*p)))
	{
	  FUNC0 (GRUB_ERR_BAD_FILENAME,
		      "invalid file name `%s'", name);
	  goto fail;
	}

      if (disk->total_sectors < blocks[i].offset + blocks[i].length)
	{
	  FUNC0 (GRUB_ERR_BAD_FILENAME, "beyond the total sectors");
	  goto fail;
	}

      blocks[i].offset <<= GRUB_DISK_SECTOR_BITS;
      blocks[i].length <<= GRUB_DISK_SECTOR_BITS;
      file->size += blocks[i].length;
      p++;
    }

  file->data = blocks;

  return GRUB_ERR_NONE;

 fail:
  FUNC1 (blocks);
  return grub_errno;
}