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
struct TYPE_2__ {int obj_class; scalar_t__ obj_id; } ;
typedef  int /*<<< orphan*/  HPDF_UINT ;
typedef  TYPE_1__ HPDF_Obj_Header ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int HPDF_OCLASS_ANY ; 
#define  HPDF_OCLASS_ARRAY 131 
#define  HPDF_OCLASS_BINARY 130 
#define  HPDF_OCLASS_DICT 129 
#define  HPDF_OCLASS_STRING 128 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 

void
FUNC6  (HPDF_MMgr    mmgr,
                     void         *obj)
{
    HPDF_Obj_Header *header;

    FUNC4((" HPDF_Obj_ForceFree\n"));

    if (!obj)
        return;

    header = (HPDF_Obj_Header *)obj;

    FUNC4((" HPDF_Obj_ForceFree obj=0x%08X obj_id=0x%08X "
                    "obj_class=0x%08X\n",
                    (HPDF_UINT)obj, (HPDF_UINT)(header->obj_id),
                    (HPDF_UINT)(header->obj_class)));

    switch (header->obj_class & HPDF_OCLASS_ANY) {
        case HPDF_OCLASS_STRING:
            FUNC5 (obj);
            break;
        case HPDF_OCLASS_BINARY:
            FUNC1 (obj);
            break;
        case HPDF_OCLASS_ARRAY:
            FUNC0 (obj);
            break;
        case HPDF_OCLASS_DICT:
            FUNC2 (obj);
            break;
        default:
            FUNC3 (mmgr, obj);
    }
}