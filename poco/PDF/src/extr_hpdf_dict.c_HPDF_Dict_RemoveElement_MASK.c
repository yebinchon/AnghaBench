#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ count; } ;
struct TYPE_9__ {int /*<<< orphan*/  mmgr; TYPE_3__* list; } ;
struct TYPE_8__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
typedef  scalar_t__ HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  TYPE_1__* HPDF_DictElement ;
typedef  TYPE_2__* HPDF_Dict ;

/* Variables and functions */
 int /*<<< orphan*/  HPDF_DICT_ITEM_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  HPDF_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ) ; 

HPDF_STATUS
FUNC5  (HPDF_Dict        dict,
                          const char  *key)
{
    HPDF_UINT i;

    for (i = 0; i < dict->list->count; i++) {
        HPDF_DictElement element =
                (HPDF_DictElement)FUNC1 (dict->list, i);

        if (FUNC4 (key, element->key) == 0) {
            FUNC2 (dict->list, element);

            FUNC3 (dict->mmgr, element->value);
            FUNC0 (dict->mmgr, element);

            return HPDF_OK;
        }
    }

    return HPDF_DICT_ITEM_NOT_FOUND;
}