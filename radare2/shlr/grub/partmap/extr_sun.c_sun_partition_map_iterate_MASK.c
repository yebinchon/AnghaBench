#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct grub_sun_partition_descriptor {int /*<<< orphan*/  num_sectors; int /*<<< orphan*/  start_cylinder; } ;
struct grub_sun_block {int /*<<< orphan*/  nsect; int /*<<< orphan*/  ntrks; struct grub_sun_partition_descriptor* partitions; TYPE_1__* infos; int /*<<< orphan*/  magic; } ;
struct grub_partition {int dummy; } ;
typedef  int grub_uint64_t ;
typedef  TYPE_2__* grub_partition_t ;
typedef  scalar_t__ grub_err_t ;
typedef  int /*<<< orphan*/  grub_disk_t ;
struct TYPE_5__ {int start; int number; int index; scalar_t__ len; int /*<<< orphan*/ * partmap; } ;
struct TYPE_4__ {scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_PART_TABLE ; 
 int GRUB_PARTMAP_SUN_MAGIC ; 
 int GRUB_PARTMAP_SUN_MAX_PARTS ; 
 scalar_t__ GRUB_PARTMAP_SUN_WHOLE_DISK_ID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct grub_sun_block*) ; 
 scalar_t__ grub_errno ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct grub_sun_block*) ; 
 int /*<<< orphan*/  grub_sun_partition_map ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static grub_err_t
FUNC7 (grub_disk_t disk,
                           int (*hook) (grub_disk_t disk,
					const grub_partition_t partition,
					void *closure),
			   void *closure)
{
  grub_partition_t p;
  struct grub_sun_block block;
  int partnum;
  grub_err_t err;

  p = (grub_partition_t) FUNC6 (sizeof (struct grub_partition));
  if (! p)
    return grub_errno;

  p->partmap = &grub_sun_partition_map;
  err = FUNC2 (disk, 0, 0, sizeof (struct grub_sun_block),
			&block);
  if (err)
    {
      FUNC4 (p);
      return err;
    }

  if (GRUB_PARTMAP_SUN_MAGIC != FUNC0 (block.magic))
    {
      FUNC4 (p);
      return FUNC3 (GRUB_ERR_BAD_PART_TABLE, "not a sun partition table");
    }

  if (! FUNC5 (&block))
    {
      FUNC4 (p);
      return FUNC3 (GRUB_ERR_BAD_PART_TABLE, "invalid checksum");
    }

  /* Maybe another error value would be better, because partition
     table _is_ recognized but invalid.  */
  for (partnum = 0; partnum < GRUB_PARTMAP_SUN_MAX_PARTS; partnum++)
    {
      struct grub_sun_partition_descriptor *desc;

      if (block.infos[partnum].id == 0
	  || block.infos[partnum].id == GRUB_PARTMAP_SUN_WHOLE_DISK_ID)
	continue;

      desc = &block.partitions[partnum];
      p->start = ((grub_uint64_t) FUNC1 (desc->start_cylinder)
		  * FUNC0 (block.ntrks)
		  * FUNC0 (block.nsect));
      p->len = FUNC1 (desc->num_sectors);
      p->number = p->index = partnum;
      if (p->len)
	{
	  if (hook (disk, p, closure))
	    partnum = GRUB_PARTMAP_SUN_MAX_PARTS;
	}
    }

  FUNC4 (p);

  return grub_errno;
}