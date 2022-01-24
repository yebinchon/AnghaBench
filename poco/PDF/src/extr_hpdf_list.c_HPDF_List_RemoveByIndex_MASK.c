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
struct TYPE_3__ {size_t count; void** obj; } ;
typedef  size_t HPDF_UINT ;
typedef  TYPE_1__* HPDF_List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

void*
FUNC1  (HPDF_List  list,
                          HPDF_UINT  index)
{
    void *tmp;

    FUNC0((" HPDF_List_RemoveByIndex\n"));

    if (list->count <= index)
        return NULL;

    tmp = list->obj[index];

    while (index < list->count - 1) {
        list->obj[index] = list->obj[index + 1];
        index++;
    }

    list->count--;

    return tmp;
}