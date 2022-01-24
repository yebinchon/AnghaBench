#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ count; } ;
struct TYPE_11__ {int /*<<< orphan*/  mmgr; TYPE_6__* list; int /*<<< orphan*/  error; } ;
struct TYPE_10__ {int obj_id; } ;
struct TYPE_8__ {int obj_id; } ;
struct TYPE_9__ {TYPE_1__ header; } ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_2__* HPDF_Proxy ;
typedef  TYPE_3__ HPDF_Obj_Header ;
typedef  TYPE_4__* HPDF_Array ;

/* Variables and functions */
 scalar_t__ HPDF_ARRAY_COUNT_ERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_INVALID_OBJECT ; 
 scalar_t__ HPDF_LIMIT_MAX_ARRAY ; 
 scalar_t__ FUNC1 (TYPE_6__*,void*) ; 
 scalar_t__ HPDF_OK ; 
 int HPDF_OTYPE_DIRECT ; 
 int HPDF_OTYPE_INDIRECT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

HPDF_STATUS
FUNC6  (HPDF_Array  array,
                 void        *obj)
{
    HPDF_Obj_Header *header;
    HPDF_STATUS ret;

    FUNC3((" HPDF_Array_Add\n"));

    if (!obj) {
        if (FUNC0 (array->error) == HPDF_OK)
            return FUNC5 (array->error, HPDF_INVALID_OBJECT, 0);
        else
            return HPDF_INVALID_OBJECT;
    }

    header = (HPDF_Obj_Header *)obj;

    if (header->obj_id & HPDF_OTYPE_DIRECT)
        return FUNC5 (array->error, HPDF_INVALID_OBJECT, 0);

    if (array->list->count >= HPDF_LIMIT_MAX_ARRAY) {
        FUNC3((" HPDF_Array_Add exceed limitatin of array count(%d)\n",
                    HPDF_LIMIT_MAX_ARRAY));

        FUNC2 (array->mmgr, obj);
        return FUNC5 (array->error, HPDF_ARRAY_COUNT_ERR, 0);
    }

    if (header->obj_id & HPDF_OTYPE_INDIRECT) {
        HPDF_Proxy proxy = FUNC4 (array->mmgr, obj);

        if (!proxy) {
            FUNC2 (array->mmgr, obj);
            return FUNC0 (array->error);
        }

        proxy->header.obj_id |= HPDF_OTYPE_DIRECT;
        obj = proxy;
    } else
        header->obj_id |= HPDF_OTYPE_DIRECT;

    ret = FUNC1 (array->list, obj);
    if (ret != HPDF_OK)
        FUNC2 (array->mmgr, obj);

    return ret;
}