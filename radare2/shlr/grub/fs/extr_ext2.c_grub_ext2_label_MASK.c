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
struct TYPE_4__ {int /*<<< orphan*/  volume_name; } ;
struct grub_ext2_data {TYPE_1__ sblock; } ;
typedef  int /*<<< orphan*/  grub_err_t ;
typedef  int /*<<< orphan*/  grub_disk_t ;
typedef  TYPE_2__* grub_device_t ;
struct TYPE_5__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_errno ; 
 struct grub_ext2_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct grub_ext2_data*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  my_mod ; 

__attribute__((used)) static grub_err_t
FUNC5 (grub_device_t device, char **label)
{
  struct grub_ext2_data *data;
  grub_disk_t disk = device->disk;

  FUNC0 (my_mod);

  data = FUNC2 (disk);
  if (data)
    *label = FUNC4 (data->sblock.volume_name, 14);
  else
    *label = NULL;

  FUNC1 (my_mod);

  FUNC3 (data);

  return grub_errno;
}