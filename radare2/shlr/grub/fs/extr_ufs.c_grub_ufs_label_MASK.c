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
struct TYPE_4__ {scalar_t__ volume_name; } ;
struct grub_ufs_data {TYPE_1__ sblock; } ;
typedef  int /*<<< orphan*/  grub_err_t ;
typedef  TYPE_2__* grub_device_t ;
struct TYPE_5__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_errno ; 
 int /*<<< orphan*/  FUNC2 (struct grub_ufs_data*) ; 
 char* FUNC3 (char*) ; 
 struct grub_ufs_data* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  my_mod ; 

__attribute__((used)) static grub_err_t
FUNC5 (grub_device_t device, char **label)
{
  struct grub_ufs_data *data = 0;

  FUNC0 (my_mod);

  *label = 0;

  data = FUNC4 (device->disk);
  if (data)
    *label = FUNC3 ((char *) data->sblock.volume_name);

  FUNC1 (my_mod);

  FUNC2 (data);

  return grub_errno;
}