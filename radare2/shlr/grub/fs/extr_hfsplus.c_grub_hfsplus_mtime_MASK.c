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
struct TYPE_4__ {int /*<<< orphan*/  utime; } ;
struct grub_hfsplus_data {TYPE_1__ volheader; } ;
typedef  scalar_t__ grub_int32_t ;
typedef  int /*<<< orphan*/  grub_err_t ;
typedef  int /*<<< orphan*/  grub_disk_t ;
typedef  TYPE_2__* grub_device_t ;
struct TYPE_5__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_errno ; 
 int /*<<< orphan*/  FUNC3 (struct grub_hfsplus_data*) ; 
 struct grub_hfsplus_data* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  my_mod ; 

__attribute__((used)) static grub_err_t
FUNC5 (grub_device_t device, grub_int32_t *tm)
{
  struct grub_hfsplus_data *data;
  grub_disk_t disk = device->disk;

  FUNC1 (my_mod);

  data = FUNC4 (disk);
  if (!data)
    *tm = 0;
  else
    *tm = FUNC0 (data->volheader.utime) - 2082844800;

  FUNC2 (my_mod);

  FUNC3 (data);

  return grub_errno;

}