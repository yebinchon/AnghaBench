#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int count; void** obj; int block_siz; int /*<<< orphan*/  mmgr; int /*<<< orphan*/  error; } ;
typedef  int HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  TYPE_1__* HPDF_List ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HPDF_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  HPDF_OK ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static HPDF_STATUS
FUNC5  (HPDF_List   list,
         HPDF_UINT   count)
{
    void **new_obj;

    FUNC4((" HPDF_List_Resize\n"));

    if (list->count >= count) {
        if (list->count == count)
            return HPDF_OK;
        else
            return HPDF_INVALID_PARAMETER;
    }

    new_obj = (void **)FUNC2 (list->mmgr, count * sizeof(void *));

    if (!new_obj)
        return FUNC0 (list->error);

    if (list->obj)
        FUNC3 ((HPDF_BYTE *)new_obj, (HPDF_BYTE *)list->obj,
                list->block_siz * sizeof(void *));

    list->block_siz = count;
    if (list->obj)
        FUNC1 (list->mmgr, list->obj);
    list->obj = new_obj;

    return HPDF_OK;
}