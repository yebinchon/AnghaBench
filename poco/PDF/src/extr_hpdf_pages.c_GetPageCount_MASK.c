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
struct TYPE_7__ {TYPE_1__* list; } ;
struct TYPE_6__ {int obj_class; } ;
struct TYPE_5__ {scalar_t__ count; } ;
typedef  scalar_t__ HPDF_UINT ;
typedef  TYPE_2__ HPDF_Obj_Header ;
typedef  int /*<<< orphan*/  HPDF_Dict ;
typedef  TYPE_3__* HPDF_Array ;

/* Variables and functions */
 void* FUNC0 (TYPE_3__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_OCLASS_ARRAY ; 
 int HPDF_OCLASS_DICT ; 
 int HPDF_OSUBCLASS_PAGE ; 
 int HPDF_OSUBCLASS_PAGES ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static HPDF_UINT
FUNC3  (HPDF_Dict    pages)
{
    HPDF_UINT i;
    HPDF_UINT count = 0;
    HPDF_Array kids = (HPDF_Array)FUNC1 (pages, "Kids",
            HPDF_OCLASS_ARRAY);

    FUNC2((" GetPageCount\n"));

    if (!kids)
        return 0;

    for (i = 0; i < kids->list->count; i++) {
        void *obj = FUNC0 (kids, i, HPDF_OCLASS_DICT);
        HPDF_Obj_Header *header = (HPDF_Obj_Header *)obj;

        if (header->obj_class == (HPDF_OCLASS_DICT | HPDF_OSUBCLASS_PAGES))
            count += FUNC3 ((HPDF_Dict)obj);
        else if (header->obj_class == (HPDF_OCLASS_DICT | HPDF_OSUBCLASS_PAGE))
            count += 1;
    }

    return count;
}