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
struct TYPE_2__ {int /*<<< orphan*/  log2_blksz; } ;
struct grub_ufs_data {int /*<<< orphan*/  disk; int /*<<< orphan*/  be; TYPE_1__ sblock; } ;
typedef  int /*<<< orphan*/  indir ;
typedef  int /*<<< orphan*/  grub_uint64_t ;
typedef  int grub_uint32_t ;
typedef  int grub_disk_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_NOT_IMPLEMENTED_YET ; 
 unsigned int GRUB_UFS_DIRBLKS ; 
 int INODE_BLKSZ ; 
 int FUNC0 (struct grub_ufs_data*,unsigned int) ; 
 int FUNC1 (struct grub_ufs_data*,int) ; 
 int FUNC2 (struct grub_ufs_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static grub_disk_addr_t
FUNC7 (struct grub_ufs_data *data, unsigned int blk)
{
  int blksz = FUNC2 (data);
  unsigned int indirsz;
  int log2_blksz;

  /* Direct.  */
  if (blk < GRUB_UFS_DIRBLKS)
    return FUNC0 (data, blk);

  log2_blksz = FUNC6 (data->sblock.log2_blksz, data->be);

  blk -= GRUB_UFS_DIRBLKS;

  indirsz = blksz / INODE_BLKSZ;
  /* Single indirect block.  */
  if (blk < indirsz)
    {
#ifdef MODE_UFS2
#ifndef _MSC_VER
	  grub_uint64_t indir[blksz / sizeof (grub_uint64_t)];
#else
	  grub_uint64_t *indir = grub_malloc(blksz / sizeof (grub_uint64_t));
#endif
#else
#ifndef _MSC_VER
	  grub_uint32_t indir[blksz / sizeof (grub_uint32_t)];
#else
	  grub_uint32_t *indir = grub_malloc(blksz / sizeof (grub_uint32_t));
#endif
#endif
	  FUNC3 (data->disk, FUNC1 (data, 0) << log2_blksz,
		      0, sizeof (indir), indir);
      return indir[blk];
    }
  blk -= indirsz;

  /* Double indirect block.  */
  if (blk < indirsz * indirsz)
    {
#ifdef MODE_UFS2
#ifndef _MSC_VER
	  grub_uint64_t indir[blksz / sizeof (grub_uint64_t)];
#else
	  grub_uint64_t *indir = grub_malloc(blksz / sizeof (grub_uint64_t));
#endif
#else
#ifndef _MSC_VER
	  grub_uint32_t indir[blksz / sizeof (grub_uint32_t)];
#else
	  grub_uint32_t *indir = grub_malloc(blksz / sizeof (grub_uint32_t));
#endif
#endif

      FUNC3 (data->disk, FUNC1 (data, 1) << log2_blksz,
		      0, sizeof (indir), indir);
      FUNC3 (data->disk,
		      (indir [blk / indirsz])
		      << log2_blksz,
		      0, sizeof (indir), indir);

      return indir[blk % indirsz];
    }


  FUNC4 (GRUB_ERR_NOT_IMPLEMENTED_YET,
	      "ufs does not support triple indirect blocks");
  return 0;
}