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
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ count; } ;
struct TYPE_12__ {int /*<<< orphan*/  mmgr; TYPE_6__* list; int /*<<< orphan*/  error; } ;
struct TYPE_11__ {int obj_id; scalar_t__ obj_class; } ;
struct TYPE_9__ {int obj_id; } ;
struct TYPE_10__ {void* obj; TYPE_1__ header; } ;
typedef  scalar_t__ HPDF_UINT ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_2__* HPDF_Proxy ;
typedef  TYPE_3__ HPDF_Obj_Header ;
typedef  TYPE_4__* HPDF_Array ;

/* Variables and functions */
 scalar_t__ HPDF_ARRAY_COUNT_ERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_INVALID_OBJECT ; 
 scalar_t__ HPDF_ITEM_NOT_FOUND ; 
 scalar_t__ HPDF_LIMIT_MAX_ARRAY ; 
 scalar_t__ FUNC1 (TYPE_6__*,void*,void*) ; 
 void* FUNC2 (TYPE_6__*,scalar_t__) ; 
 scalar_t__ HPDF_OCLASS_PROXY ; 
 scalar_t__ HPDF_OK ; 
 int HPDF_OTYPE_DIRECT ; 
 int HPDF_OTYPE_INDIRECT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

HPDF_STATUS
FUNC7  (HPDF_Array  array,
                    void        *target,
                    void        *obj)
{
    HPDF_Obj_Header *header;
    HPDF_STATUS ret;
    HPDF_UINT i;

    FUNC4((" HPDF_Array_Insert\n"));

    if (!obj) {
        if (FUNC0 (array->error) == HPDF_OK)
            return FUNC6 (array->error, HPDF_INVALID_OBJECT, 0);
        else
            return HPDF_INVALID_OBJECT;
    }

    header = (HPDF_Obj_Header *)obj;

    if (header->obj_id & HPDF_OTYPE_DIRECT) {
        FUNC4((" HPDF_Array_Add this object cannot owned by array "
                "obj=0x%08X\n", (HPDF_UINT)array));

        return FUNC6 (array->error, HPDF_INVALID_OBJECT, 0);
    }

    if (array->list->count >= HPDF_LIMIT_MAX_ARRAY) {
        FUNC4((" HPDF_Array_Add exceed limitatin of array count(%d)\n",
                    HPDF_LIMIT_MAX_ARRAY));

        FUNC3 (array->mmgr, obj);

        return FUNC6 (array->error, HPDF_ARRAY_COUNT_ERR, 0);
    }

    if (header->obj_id & HPDF_OTYPE_INDIRECT) {
        HPDF_Proxy proxy = FUNC5 (array->mmgr, obj);

        if (!proxy) {
            FUNC3 (array->mmgr, obj);
            return FUNC0 (array->error);
        }

        proxy->header.obj_id |= HPDF_OTYPE_DIRECT;
        obj = proxy;
    } else
        header->obj_id |= HPDF_OTYPE_DIRECT;

    /* get the target-object from object-list
     * consider that the pointer contained in list may be proxy-object.
     */
    for (i = 0; i < array->list->count; i++) {
        void *ptr = FUNC2 (array->list, i);
        void *obj_ptr;

        header = (HPDF_Obj_Header *)obj;
        if (header->obj_class == HPDF_OCLASS_PROXY)
            obj_ptr = ((HPDF_Proxy)ptr)->obj;
        else
            obj_ptr = ptr;

        if (obj_ptr == target) {
            ret = FUNC1 (array->list, ptr, obj);
            if (ret != HPDF_OK)
                FUNC3 (array->mmgr, obj);

            return ret;
        }
    }

    FUNC3 (array->mmgr, obj);

    return HPDF_ITEM_NOT_FOUND;
}