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
struct TYPE_2__ {int /*<<< orphan*/  sr_dat; } ;
struct grub_nilfs2_data {TYPE_1__ sroot; int /*<<< orphan*/  disk; } ;
struct grub_nilfs2_dat_entry {int /*<<< orphan*/  de_blocknr; } ;
typedef  int grub_uint64_t ;
typedef  int /*<<< orphan*/  grub_uint32_t ;
typedef  int /*<<< orphan*/  grub_disk_t ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_FS ; 
 int FUNC0 (struct grub_nilfs2_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct grub_nilfs2_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,struct grub_nilfs2_dat_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct grub_nilfs2_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct grub_nilfs2_data*,int,int) ; 

__attribute__((used)) static grub_uint64_t
FUNC8 (struct grub_nilfs2_data *data, grub_uint64_t key)
{
  struct grub_nilfs2_dat_entry entry;
  grub_disk_t disk = data->disk;
  grub_uint64_t pptr;
  grub_uint32_t blockno, offset;
  unsigned int nilfs2_block_count = (1 << FUNC0 (data));

  blockno = FUNC7 (data, key,
					     sizeof (struct
						     grub_nilfs2_dat_entry));

  FUNC3 (key * sizeof (struct grub_nilfs2_dat_entry),
		 FUNC1 (data), &offset);

  pptr = FUNC6 (data, &data->sroot.sr_dat, blockno, 0);
  if (pptr == (grub_uint64_t) - 1)
    {
      FUNC4 (GRUB_ERR_BAD_FS, "btree lookup failure");
      return -1;
    }

  FUNC2 (disk, pptr * nilfs2_block_count, offset,
		  sizeof (struct grub_nilfs2_dat_entry), &entry);

  return FUNC5 (entry.de_blocknr);
}