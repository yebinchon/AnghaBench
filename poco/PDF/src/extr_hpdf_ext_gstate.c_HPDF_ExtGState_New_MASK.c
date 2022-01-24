#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_8__ {TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;
typedef  TYPE_2__* HPDF_Dict ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,char*,char*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  HPDF_OSUBCLASS_EXT_GSTATE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 

HPDF_Dict
FUNC4  (HPDF_MMgr   mmgr, 
                     HPDF_Xref   xref)
{
    HPDF_Dict obj = FUNC1 (mmgr);

    FUNC2 ((" HPDF_ExtGState_New\n"));

    if (!obj)
        return NULL;

    if (FUNC3 (xref, obj) != HPDF_OK)
        return NULL;

    if (FUNC0 (obj, "Type", "ExtGState") != HPDF_OK)
        return NULL;

    obj->header.obj_class |= HPDF_OSUBCLASS_EXT_GSTATE;

    return obj;
}