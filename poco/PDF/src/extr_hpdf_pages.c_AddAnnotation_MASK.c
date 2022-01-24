#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  error; int /*<<< orphan*/  mmgr; } ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_1__* HPDF_Page ;
typedef  TYPE_1__* HPDF_Array ;
typedef  TYPE_1__* HPDF_Annotation ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_OCLASS_ARRAY ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static HPDF_STATUS
FUNC6  (HPDF_Page        page,
                HPDF_Annotation  annot)
{
    HPDF_Array array;
    HPDF_STATUS ret = HPDF_OK;

    FUNC5((" HPDF_Pages\n"));

    /* find "Annots" entry */
    array = FUNC3 (page, "Annots", HPDF_OCLASS_ARRAY);

    if (!array) {
        array = FUNC1 (page->mmgr);
        if (!array)
            return FUNC4 (page->error);

        ret = FUNC2 (page, "Annots", array);
        if (ret != HPDF_OK)
            return ret;
    }
    
    if ((ret = FUNC0 (array, annot)) != HPDF_OK)
       return ret;

    /* Add Parent to the annotation  */
    ret = FUNC2( annot, "P", page);

    return ret;
}