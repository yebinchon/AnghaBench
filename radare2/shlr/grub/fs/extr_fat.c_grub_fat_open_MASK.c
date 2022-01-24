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
struct grub_fat_data {int attr; int /*<<< orphan*/  file_size; } ;
typedef  TYPE_2__* grub_file_t ;
typedef  scalar_t__ grub_err_t ;
struct TYPE_5__ {int /*<<< orphan*/  size; struct grub_fat_data* data; TYPE_1__* device; } ;
struct TYPE_4__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_FILE_TYPE ; 
 scalar_t__ GRUB_ERR_NONE ; 
 int GRUB_FAT_ATTR_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,struct grub_fat_data*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct grub_fat_data* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct grub_fat_data*) ; 
 int /*<<< orphan*/  my_mod ; 

__attribute__((used)) static grub_err_t
FUNC6 (grub_file_t file, const char *name)
{
  struct grub_fat_data *data = 0;
  char *p = (char *) name;

  FUNC0 (my_mod);

  data = FUNC4 (file->device->disk);
  if (! data)
    goto fail;

  do
    {
      p = FUNC3 (file->device->disk, data, p, 0, 0);
      if (grub_errno != GRUB_ERR_NONE)
	goto fail;
    }
  while (p);

  if (data->attr & GRUB_FAT_ATTR_DIRECTORY)
    {
      FUNC2 (GRUB_ERR_BAD_FILE_TYPE, "not a file");
      goto fail;
    }

  file->data = data;
  file->size = data->file_size;

  return GRUB_ERR_NONE;

 fail:

  FUNC5 (data);

  FUNC1 (my_mod);

  return grub_errno;
}