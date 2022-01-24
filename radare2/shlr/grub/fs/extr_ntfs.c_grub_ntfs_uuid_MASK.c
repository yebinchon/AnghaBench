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
struct grub_ntfs_data {scalar_t__ uuid; } ;
typedef  int /*<<< orphan*/  grub_err_t ;
typedef  int /*<<< orphan*/  grub_disk_t ;
typedef  TYPE_1__* grub_device_t ;
struct TYPE_3__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_errno ; 
 int /*<<< orphan*/  FUNC2 (struct grub_ntfs_data*) ; 
 struct grub_ntfs_data* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,unsigned long long) ; 
 int /*<<< orphan*/  my_mod ; 

__attribute__((used)) static grub_err_t
FUNC5 (grub_device_t device, char **uuid)
{
  struct grub_ntfs_data *data;
  grub_disk_t disk = device->disk;

  FUNC0 (my_mod);

  data = FUNC3 (disk);
  if (data)
    {
      *uuid = FUNC4 ("%016llx", (unsigned long long) data->uuid);
    }
  else
    *uuid = NULL;

  FUNC1 (my_mod);

  FUNC2 (data);

  return grub_errno;
}