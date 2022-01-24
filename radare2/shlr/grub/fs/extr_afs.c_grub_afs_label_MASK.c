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
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct grub_afs_data {TYPE_1__ sblock; } ;
typedef  int /*<<< orphan*/  grub_err_t ;
typedef  int /*<<< orphan*/  grub_disk_t ;
typedef  TYPE_2__* grub_device_t ;
struct TYPE_5__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 struct grub_afs_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_errno ; 
 int /*<<< orphan*/  FUNC3 (struct grub_afs_data*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  my_mod ; 

__attribute__((used)) static grub_err_t
FUNC5 (grub_device_t device, char **label)
{
  struct grub_afs_data *data;
  grub_disk_t disk = device->disk;

  FUNC1 (my_mod);

  data = FUNC0 (disk);
  if (data)
    *label = FUNC4 (data->sblock.name, sizeof (data->sblock.name));
  else
    *label = NULL;

  FUNC2 (my_mod);

  FUNC3 (data);

  return grub_errno;
}