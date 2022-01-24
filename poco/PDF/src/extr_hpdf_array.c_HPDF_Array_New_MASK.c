#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_14__ {int /*<<< orphan*/  list; int /*<<< orphan*/  error; TYPE_2__* mmgr; TYPE_1__ header; } ;
struct TYPE_13__ {int /*<<< orphan*/  error; } ;
typedef  TYPE_2__* HPDF_MMgr ;
typedef  int /*<<< orphan*/  HPDF_Array_Rec ;
typedef  TYPE_3__* HPDF_Array ;

/* Variables and functions */
 int /*<<< orphan*/  HPDF_DEF_ITEMS_PER_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_3__*) ; 
 TYPE_3__* FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HPDF_OCLASS_ARRAY ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

HPDF_Array
FUNC5  (HPDF_MMgr  mmgr)
{
    HPDF_Array obj;

    FUNC4((" HPDF_Array_New\n"));

    obj = FUNC1 (mmgr, sizeof(HPDF_Array_Rec));
    if (obj) {
        FUNC3 (obj, 0, sizeof(HPDF_Array_Rec));
        obj->header.obj_class = HPDF_OCLASS_ARRAY;
        obj->mmgr = mmgr;
        obj->error = mmgr->error;
        obj->list = FUNC2 (mmgr, HPDF_DEF_ITEMS_PER_BLOCK);
        if (!obj->list) {
            FUNC0 (mmgr, obj);
            obj = NULL;
        }
    }

    return obj;
}