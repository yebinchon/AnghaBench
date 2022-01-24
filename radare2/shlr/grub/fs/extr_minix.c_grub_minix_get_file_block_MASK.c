#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct grub_minix_sblock {int dummy; } ;
struct grub_minix_data {struct grub_minix_sblock sblock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_OUT_OF_RANGE ; 
 unsigned int FUNC0 (struct grub_minix_data*) ; 
 int FUNC1 (struct grub_minix_data*) ; 
 int FUNC2 (struct grub_minix_data*,unsigned int) ; 
 int FUNC3 (struct grub_minix_data*) ; 
 unsigned int GRUB_MINIX_ZONESZ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int,unsigned int,struct grub_minix_data*) ; 

__attribute__((used)) static int
FUNC6 (struct grub_minix_data *data, unsigned int blk)
{
  struct grub_minix_sblock *sblock = &data->sblock;
  int indir;

  /* Direct block.  */
  if (blk < 7)
    return FUNC2 (data, blk);

  /* Indirect block.  */
  blk -= 7;
  if (blk < GRUB_MINIX_ZONESZ / FUNC0 (data))
    {
      indir = FUNC5 (FUNC3 (data), blk, data);
      return indir;
    }

  /* Double indirect block.  */
  blk -= GRUB_MINIX_ZONESZ / FUNC0 (data);
  if (blk < (GRUB_MINIX_ZONESZ / FUNC0 (data))
      * (GRUB_MINIX_ZONESZ / FUNC0 (data)))
    {
      indir = FUNC5 (FUNC1 (data),
			      blk / GRUB_MINIX_ZONESZ, data);

      indir = FUNC5 (indir, blk % GRUB_MINIX_ZONESZ, data);

      return indir;
    }

  /* This should never happen.  */
  FUNC4 (GRUB_ERR_OUT_OF_RANGE, "file bigger than maximum size");

  return 0;
}