#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_12__ {scalar_t__ len; int /*<<< orphan*/ * value; int /*<<< orphan*/  error; TYPE_1__* mmgr; TYPE_3__ header; } ;
struct TYPE_11__ {int /*<<< orphan*/  error; } ;
typedef  int /*<<< orphan*/  HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_Obj_Header ;
typedef  TYPE_1__* HPDF_MMgr ;
typedef  int /*<<< orphan*/  HPDF_Binary_Rec ;
typedef  TYPE_2__* HPDF_Binary ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HPDF_OCLASS_BINARY ; 
 scalar_t__ HPDF_OK ; 

HPDF_Binary
FUNC4  (HPDF_MMgr  mmgr,
                  HPDF_BYTE  *value,
                  HPDF_UINT  len)
{
    HPDF_Binary obj;

    obj  = FUNC2 (mmgr, sizeof(HPDF_Binary_Rec));

    if (obj) {
        FUNC3(&obj->header, 0, sizeof(HPDF_Obj_Header));
        obj->header.obj_class = HPDF_OCLASS_BINARY;

        obj->mmgr = mmgr;
        obj->error = mmgr->error;
        obj->value = NULL;
        obj->len = 0;
        if (FUNC0 (obj, value, len) != HPDF_OK) {
            FUNC1 (mmgr, obj);
            return NULL;
        }
    }

    return obj;
}