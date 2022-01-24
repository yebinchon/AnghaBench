#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ count; scalar_t__ block_siz; scalar_t__ items_per_block; void** obj; } ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_1__* HPDF_List ;

/* Variables and functions */
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__) ; 

HPDF_STATUS
FUNC2  (HPDF_List  list,
                void       *item)
{
    FUNC0((" HPDF_List_Add\n"));

    if (list->count >= list->block_siz) {
        HPDF_STATUS ret = FUNC1 (list,
                list->block_siz + list->items_per_block);

        if (ret != HPDF_OK) {
            return ret;
        }
    }

    list->obj[list->count++] = item;
    return HPDF_OK;
}