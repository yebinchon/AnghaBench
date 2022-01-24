#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct grub_udf_data {size_t npm; TYPE_3__** pms; TYPE_1__* pds; } ;
typedef  scalar_t__ grub_uint32_t ;
typedef  size_t grub_uint16_t ;
struct TYPE_5__ {size_t part_num; } ;
struct TYPE_6__ {TYPE_2__ type1; } ;
struct TYPE_4__ {scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_FS ; 
 size_t FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static grub_uint32_t
FUNC3 (struct grub_udf_data *data,
		    grub_uint16_t part_ref, grub_uint32_t block)
{
  part_ref = FUNC0 (part_ref);

  if (part_ref >= data->npm)
    {
      FUNC2 (GRUB_ERR_BAD_FS, "invalid part ref");
      return 0;
    }

  return (FUNC1 (data->pds[data->pms[part_ref]->type1.part_num].start)
          + FUNC1 (block));
}