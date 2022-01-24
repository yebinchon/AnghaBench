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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_5__ {int /*<<< orphan*/  value; TYPE_3__ header; } ;
typedef  int /*<<< orphan*/  HPDF_Obj_Header ;
typedef  int /*<<< orphan*/  HPDF_Number_Rec ;
typedef  TYPE_1__* HPDF_Number ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;
typedef  int /*<<< orphan*/  HPDF_INT32 ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HPDF_OCLASS_NUMBER ; 

HPDF_Number
FUNC2  (HPDF_MMgr   mmgr,
                  HPDF_INT32  value)
{
    HPDF_Number obj = FUNC0 (mmgr, sizeof(HPDF_Number_Rec));

    if (obj) {
        FUNC1 (&obj->header, 0, sizeof(HPDF_Obj_Header));
        obj->header.obj_class = HPDF_OCLASS_NUMBER;
        obj->value = value;
    }

    return obj;
}