#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ count; } ;
struct TYPE_5__ {TYPE_2__* list; int /*<<< orphan*/  mmgr; } ;
typedef  scalar_t__ HPDF_UINT ;
typedef  TYPE_1__* HPDF_Array ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 void* FUNC1 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4  (HPDF_Array  array)
{
    HPDF_UINT i;

    FUNC3((" HPDF_Array_Clear\n"));

    if (!array)
        return;

    for (i = 0; i < array->list->count; i++) {
        void * obj = FUNC1 (array->list, i);

        if (obj) {
            FUNC2 (array->mmgr, obj);
        }
    }

    FUNC0 (array->list);
}