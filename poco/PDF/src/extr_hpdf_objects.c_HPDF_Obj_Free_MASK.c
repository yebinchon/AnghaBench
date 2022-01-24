#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int obj_id; } ;
typedef  TYPE_1__ HPDF_Obj_Header ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;

/* Variables and functions */
 int HPDF_OTYPE_INDIRECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void
FUNC2  (HPDF_MMgr    mmgr,
                void         *obj)
{
    HPDF_Obj_Header *header;

    FUNC1((" HPDF_Obj_Free\n"));

    if (!obj)
        return;

    header = (HPDF_Obj_Header *)obj;

    if (!(header->obj_id & HPDF_OTYPE_INDIRECT))
        FUNC0 (mmgr, obj);
}