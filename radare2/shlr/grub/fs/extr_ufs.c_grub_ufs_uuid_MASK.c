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
struct TYPE_4__ {scalar_t__ uuidhi; scalar_t__ uuidlow; } ;
struct grub_ufs_data {TYPE_1__ sblock; } ;
typedef  int /*<<< orphan*/  grub_err_t ;
typedef  int /*<<< orphan*/  grub_disk_t ;
typedef  TYPE_2__* grub_device_t ;
struct TYPE_5__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_errno ; 
 int /*<<< orphan*/  FUNC2 (struct grub_ufs_data*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 struct grub_ufs_data* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  my_mod ; 

__attribute__((used)) static grub_err_t
FUNC6 (grub_device_t device, char **uuid)
{
  struct grub_ufs_data *data;
  grub_disk_t disk = device->disk;

  FUNC0 (my_mod);

  data = FUNC4 (disk);
  if (data && (data->sblock.uuidhi != 0 || data->sblock.uuidlow != 0))
    *uuid = FUNC5 ("%08x%08x",
			   (unsigned) FUNC3 (data->sblock.uuidhi),
			   (unsigned) FUNC3 (data->sblock.uuidlow));
  else
    *uuid = NULL;

  FUNC1 (my_mod);

  FUNC2 (data);

  return grub_errno;
}