#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  error; int /*<<< orphan*/  mmgr; } ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  TYPE_1__* HPDF_Dict ;
typedef  int /*<<< orphan*/ * HPDF_Array ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_OCLASS_ARRAY ; 
 int /*<<< orphan*/  HPDF_OK ; 

HPDF_STATUS
FUNC5(HPDF_Dict    dict, HPDF_Dict filterParam)
{
    HPDF_Array paramArray;
    /* prepare params object */
    paramArray = FUNC3 (dict, "DecodeParms",
                                              HPDF_OCLASS_ARRAY);
    if(paramArray==NULL) {
        paramArray = FUNC1 (dict->mmgr);
       if (!paramArray)
            return FUNC4 (dict->error);

        /* add parameters */
        FUNC2(dict, "DecodeParms", paramArray);
    }
    FUNC0(paramArray, filterParam);
    return HPDF_OK;
}