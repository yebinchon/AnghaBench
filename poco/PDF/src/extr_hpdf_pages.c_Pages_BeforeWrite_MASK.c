#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  error; int /*<<< orphan*/  mmgr; } ;
struct TYPE_9__ {int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  TYPE_1__* HPDF_Number ;
typedef  TYPE_2__* HPDF_Dict ;
typedef  int /*<<< orphan*/  HPDF_Array ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_OCLASS_ARRAY ; 
 int /*<<< orphan*/  HPDF_OCLASS_NUMBER ; 
 int /*<<< orphan*/  HPDF_OK ; 
 int /*<<< orphan*/  HPDF_PAGES_MISSING_KIDS_ENTRY ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HPDF_STATUS
FUNC7  (HPDF_Dict    obj)
{
    HPDF_Array kids = (HPDF_Array )FUNC2 (obj, "Kids",
                    HPDF_OCLASS_ARRAY);
    HPDF_Number count = (HPDF_Number)FUNC2 (obj, "Count",
                    HPDF_OCLASS_NUMBER);
    HPDF_STATUS ret;

    FUNC5((" HPDF_Pages_BeforeWrite\n"));

    if (!kids)
        return FUNC6 (obj->error, HPDF_PAGES_MISSING_KIDS_ENTRY, 0);

    if (count)
        count->value = FUNC0 (obj);
    else {
        count = FUNC4 (obj->mmgr, FUNC0 (obj));
        if (!count)
            return FUNC3 (obj->error);

        if ((ret = FUNC1 (obj, "Count", count)) != HPDF_OK)
            return ret;
    }

    return HPDF_OK;
}