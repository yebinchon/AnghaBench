#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct grub_sun_pc_partition_descriptor {scalar_t__ id; int /*<<< orphan*/  num_sectors; int /*<<< orphan*/  start_sector; } ;
struct grub_sun_pc_block {struct grub_sun_pc_partition_descriptor* partitions; int /*<<< orphan*/  magic; } ;
struct grub_partition {int dummy; } ;
typedef  TYPE_1__* grub_partition_t ;
typedef  scalar_t__ grub_err_t ;
typedef  int /*<<< orphan*/  grub_disk_t ;
struct TYPE_3__ {int number; void* len; void* start; int /*<<< orphan*/ * partmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_PART_TABLE ; 
 scalar_t__ GRUB_PARTMAP_SUN_PC_MAGIC ; 
 int GRUB_PARTMAP_SUN_PC_MAX_PARTS ; 
 scalar_t__ GRUB_PARTMAP_SUN_PC_WHOLE_DISK_ID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,struct grub_sun_pc_block*) ; 
 scalar_t__ grub_errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct grub_sun_pc_block*) ; 
 int /*<<< orphan*/  grub_sun_pc_partition_map ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static grub_err_t
FUNC7 (grub_disk_t disk,
			      int (*hook) (grub_disk_t disk,
					   const grub_partition_t partition,
					   void *closure),
			      void *closure)
{
  grub_partition_t p;
  struct grub_sun_pc_block block;
  int partnum;
  grub_err_t err;

  p = (grub_partition_t) FUNC6 (sizeof (struct grub_partition));
  if (! p)
    return grub_errno;

  p->partmap = &grub_sun_pc_partition_map;
  err = FUNC0 (disk, 1, 0, sizeof (struct grub_sun_pc_block), &block);
  if (err)
    {
      FUNC2 (p);
      return err;
    }

  if (GRUB_PARTMAP_SUN_PC_MAGIC != FUNC3 (block.magic))
    {
      FUNC2 (p);
      return FUNC1 (GRUB_ERR_BAD_PART_TABLE,
			 "not a sun_pc partition table");
    }

  if (! FUNC5 (&block))
    {
      FUNC2 (p);
      return FUNC1 (GRUB_ERR_BAD_PART_TABLE, "invalid checksum");
    }

  /* Maybe another error value would be better, because partition
     table _is_ recognized but invalid.  */
  for (partnum = 0; partnum < GRUB_PARTMAP_SUN_PC_MAX_PARTS; partnum++)
    {
      struct grub_sun_pc_partition_descriptor *desc;

      if (block.partitions[partnum].id == 0
	  || block.partitions[partnum].id == GRUB_PARTMAP_SUN_PC_WHOLE_DISK_ID)
	continue;

      desc = &block.partitions[partnum];
      p->start = FUNC4 (desc->start_sector);
      p->len = FUNC4 (desc->num_sectors);
      p->number = partnum;
      if (p->len)
	{
	  if (hook (disk, p, closure))
	    partnum = GRUB_PARTMAP_SUN_PC_MAX_PARTS;
	}
    }

  FUNC2 (p);

  return grub_errno;
}