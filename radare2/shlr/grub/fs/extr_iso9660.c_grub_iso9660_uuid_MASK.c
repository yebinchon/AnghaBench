#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * hundredth; int /*<<< orphan*/ * second; int /*<<< orphan*/ * minute; int /*<<< orphan*/ * hour; int /*<<< orphan*/ * day; int /*<<< orphan*/ * month; int /*<<< orphan*/ * year; } ;
struct TYPE_6__ {TYPE_1__ modified; } ;
struct grub_iso9660_data {TYPE_2__ voldesc; } ;
typedef  int /*<<< orphan*/  grub_err_t ;
typedef  int /*<<< orphan*/  grub_disk_t ;
typedef  TYPE_3__* grub_device_t ;
struct TYPE_7__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_NUMBER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct grub_iso9660_data*) ; 
 struct grub_iso9660_data* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  my_mod ; 

__attribute__((used)) static grub_err_t
FUNC6 (grub_device_t device, char **uuid)
{
  struct grub_iso9660_data *data;
  grub_disk_t disk = device->disk;

  FUNC0 (my_mod);

  data = FUNC4 (disk);
  if (data)
    {
      if (! data->voldesc.modified.year[0] && ! data->voldesc.modified.year[1]
	  && ! data->voldesc.modified.year[2] && ! data->voldesc.modified.year[3]
	  && ! data->voldesc.modified.month[0] && ! data->voldesc.modified.month[1]
	  && ! data->voldesc.modified.day[0] && ! data->voldesc.modified.day[1]
	  && ! data->voldesc.modified.hour[0] && ! data->voldesc.modified.hour[1]
	  && ! data->voldesc.modified.minute[0] && ! data->voldesc.modified.minute[1]
	  && ! data->voldesc.modified.second[0] && ! data->voldesc.modified.second[1]
	  && ! data->voldesc.modified.hundredth[0] && ! data->voldesc.modified.hundredth[1])
	{
	  FUNC2 (GRUB_ERR_BAD_NUMBER, "no creation date in filesystem to generate UUID");
	  *uuid = NULL;
	}
      else
	{
	  *uuid = FUNC5 ("%c%c%c%c-%c%c-%c%c-%c%c-%c%c-%c%c-%c%c",
				 data->voldesc.modified.year[0],
				 data->voldesc.modified.year[1],
				 data->voldesc.modified.year[2],
				 data->voldesc.modified.year[3],
				 data->voldesc.modified.month[0],
				 data->voldesc.modified.month[1],
				 data->voldesc.modified.day[0],
				 data->voldesc.modified.day[1],
				 data->voldesc.modified.hour[0],
				 data->voldesc.modified.hour[1],
				 data->voldesc.modified.minute[0],
				 data->voldesc.modified.minute[1],
				 data->voldesc.modified.second[0],
				 data->voldesc.modified.second[1],
				 data->voldesc.modified.hundredth[0],
				 data->voldesc.modified.hundredth[1]);
	}
    }
  else
    *uuid = NULL;

	FUNC1 (my_mod);

  FUNC3 (data);

  return grub_errno;
}