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
struct grub_iso9660_data {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static char *
FUNC3 (struct grub_iso9660_data *data, int sua_block, int sua_pos,
	  int sua_size)
{
  char *sua;

  sua = FUNC2 (sua_size);
  if (!sua)
    return 0;

  if (FUNC0 (data->disk, sua_block, sua_pos, sua_size, sua))
    {
      FUNC1 (sua);
      return 0;
    }

  return sua;
}