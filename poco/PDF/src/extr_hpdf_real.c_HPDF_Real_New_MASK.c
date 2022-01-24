#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_10__ {int /*<<< orphan*/  error; } ;
struct TYPE_9__ {int /*<<< orphan*/  error; TYPE_6__ header; } ;
typedef  int /*<<< orphan*/  HPDF_Real_Rec ;
typedef  TYPE_1__* HPDF_Real ;
typedef  int /*<<< orphan*/  HPDF_REAL ;
typedef  int /*<<< orphan*/  HPDF_Obj_Header ;
typedef  TYPE_2__* HPDF_MMgr ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HPDF_OCLASS_REAL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

HPDF_Real
FUNC3  (HPDF_MMgr  mmgr,
                HPDF_REAL  value)
{
    HPDF_Real obj = FUNC0 (mmgr, sizeof(HPDF_Real_Rec));

    if (obj) {
        FUNC1 (&obj->header, 0, sizeof(HPDF_Obj_Header));
        obj->header.obj_class = HPDF_OCLASS_REAL;
        obj->error = mmgr->error;
        FUNC2 (obj, value);
    }

    return obj;
}