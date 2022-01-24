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
struct grub_fat_data {int attr; } ;
typedef  int /*<<< orphan*/  grub_err_t ;
typedef  int /*<<< orphan*/  grub_disk_t ;
typedef  TYPE_1__* grub_device_t ;
struct TYPE_3__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_FILE_TYPE ; 
 int GRUB_FAT_ATTR_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct grub_fat_data*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  grub_fat_label_hook ; 
 struct grub_fat_data* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct grub_fat_data*) ; 
 int /*<<< orphan*/  my_mod ; 

__attribute__((used)) static grub_err_t
FUNC6 (grub_device_t device, char **label)
{
  struct grub_fat_data *data;
  grub_disk_t disk = device->disk;

  FUNC0 (my_mod);

  data = FUNC4 (disk);
  if (! data)
    goto fail;

  if (! (data->attr & GRUB_FAT_ATTR_DIRECTORY))
    {
      FUNC2 (GRUB_ERR_BAD_FILE_TYPE, "not a directory");
      return 0;
    }

  *label = 0;

  FUNC3 (disk, data, grub_fat_label_hook, label);

 fail:

  FUNC1 (my_mod);

  FUNC5 (data);

  return grub_errno;
}