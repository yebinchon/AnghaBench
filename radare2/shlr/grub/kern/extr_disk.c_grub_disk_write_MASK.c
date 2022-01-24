#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int grub_size_t ;
typedef  void* grub_partition_t ;
typedef  unsigned int grub_off_t ;
typedef  int /*<<< orphan*/  grub_err_t ;
typedef  TYPE_2__* grub_disk_t ;
typedef  int /*<<< orphan*/  grub_disk_addr_t ;
struct TYPE_9__ {int /*<<< orphan*/  id; TYPE_1__* dev; void* partition; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {scalar_t__ (* write ) (TYPE_2__*,int /*<<< orphan*/ ,int,char*) ;int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int GRUB_DISK_SECTOR_BITS ; 
 int GRUB_DISK_SECTOR_SIZE ; 
 scalar_t__ GRUB_ERR_NONE ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_errno ; 
 int /*<<< orphan*/  FUNC4 (char*,void const*,int) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int,void const*) ; 

grub_err_t
FUNC7 (grub_disk_t disk, grub_disk_addr_t sector,
		 grub_off_t offset, grub_size_t size, const void *buf)
{
  unsigned real_offset;

  FUNC3 ("disk", "Writing `%s'...\n", disk->name);

  if (FUNC0 (disk, &sector, &offset, size) != GRUB_ERR_NONE)
    return grub_errno;

  real_offset = offset;

  while (size)
    {
      if (real_offset != 0 || (size < GRUB_DISK_SECTOR_SIZE && size != 0))
	{
	  char tmp_buf[GRUB_DISK_SECTOR_SIZE];
	  grub_size_t len;
	  grub_partition_t part;

	  part = disk->partition;
	  disk->partition = 0;
	  if (FUNC2 (disk, sector, 0, GRUB_DISK_SECTOR_SIZE, tmp_buf)
	      != GRUB_ERR_NONE)
	    {
	      disk->partition = part;
	      goto finish;
	    }
	  disk->partition = part;

	  len = GRUB_DISK_SECTOR_SIZE - real_offset;
	  if (len > size)
	    len = size;

	  FUNC4 (tmp_buf + real_offset, buf, len);

	  FUNC1 (disk->dev->id, disk->id, sector);

	  if ((disk->dev->write) (disk, sector, 1, tmp_buf) != GRUB_ERR_NONE)
	    goto finish;

	  sector++;
	  buf = (char *) buf + len;
	  size -= len;
	  real_offset = 0;
	}
      else
	{
	  grub_size_t len;
	  grub_size_t n;

	  len = size & ~(GRUB_DISK_SECTOR_SIZE - 1);
	  n = size >> GRUB_DISK_SECTOR_BITS;

	  if ((disk->dev->write) (disk, sector, n, buf) != GRUB_ERR_NONE)
	    goto finish;

	  while (n--)
	    FUNC1 (disk->dev->id, disk->id, sector++);

	  buf = (char *) buf + len;
	  size -= len;
	}
    }

 finish:

  return grub_errno;
}