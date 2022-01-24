#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_12__ {int /*<<< orphan*/  error; } ;
struct TYPE_11__ {int /*<<< orphan*/  error; TYPE_6__ header; } ;
typedef  int /*<<< orphan*/  HPDF_Obj_Header ;
typedef  int /*<<< orphan*/  HPDF_Name_Rec ;
typedef  TYPE_1__* HPDF_Name ;
typedef  TYPE_2__* HPDF_MMgr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ HPDF_NAME_INVALID_VALUE ; 
 scalar_t__ FUNC3 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  HPDF_OCLASS_NAME ; 

HPDF_Name
FUNC4  (HPDF_MMgr        mmgr,
                const char  *value)
{
    HPDF_Name obj;

    obj  = FUNC1 (mmgr, sizeof(HPDF_Name_Rec));

    if (obj) {
        FUNC2 (&obj->header, 0, sizeof(HPDF_Obj_Header));
        obj->header.obj_class = HPDF_OCLASS_NAME;
        obj->error = mmgr->error;
        if (FUNC3 (obj, value) == HPDF_NAME_INVALID_VALUE) {
            FUNC0 (mmgr, obj);
            return NULL;
        }
    }

    return obj;
}