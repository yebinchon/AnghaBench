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
struct grub_fat_dir_entry {scalar_t__ attr; } ;

/* Variables and functions */
 scalar_t__ GRUB_FAT_ATTR_VOLUME_ID ; 
 char* FUNC0 (char const*) ; 

__attribute__((used)) static int
FUNC1 (const char *filename, struct grub_fat_dir_entry *dir,
		     void *closure)
{
  char **label = closure;

  if (dir->attr == GRUB_FAT_ATTR_VOLUME_ID)
    {
      *label = FUNC0 (filename);
      return 1;
    }
  return 0;
}