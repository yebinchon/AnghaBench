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
struct TYPE_4__ {scalar_t__ volname; } ;
struct grub_jfs_data {TYPE_1__ sblock; } ;
typedef  int /*<<< orphan*/  grub_err_t ;
typedef  TYPE_2__* grub_device_t ;
struct TYPE_5__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  grub_errno ; 
 struct grub_jfs_data* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,int) ; 

__attribute__((used)) static grub_err_t
FUNC2 (grub_device_t device, char **label)
{
  struct grub_jfs_data *data;
  data = FUNC0 (device->disk);

  if (data)
    *label = FUNC1 ((char *) (data->sblock.volname), 11);
  else
    *label = 0;

  return grub_errno;
}