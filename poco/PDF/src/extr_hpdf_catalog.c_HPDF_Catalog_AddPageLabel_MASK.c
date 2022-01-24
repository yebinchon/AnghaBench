#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_1__* error; int /*<<< orphan*/  mmgr; } ;
struct TYPE_16__ {int /*<<< orphan*/  error_no; } ;
typedef  int /*<<< orphan*/  HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  TYPE_2__* HPDF_Dict ;
typedef  TYPE_2__* HPDF_Catalog ;
typedef  TYPE_2__* HPDF_Array ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,TYPE_2__*) ; 
 TYPE_2__* FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_OCLASS_ARRAY ; 
 int /*<<< orphan*/  HPDF_OCLASS_DICT ; 
 int /*<<< orphan*/  HPDF_OK ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

HPDF_STATUS
FUNC7  (HPDF_Catalog   catalog,
                            HPDF_UINT      page_num,
                            HPDF_Dict      page_label)
{
    HPDF_STATUS ret;
    HPDF_Array nums;
    HPDF_Dict labels = FUNC4 (catalog, "PageLabels",
        HPDF_OCLASS_DICT);

    FUNC6 ((" HPDF_Catalog_AddPageLabel\n"));

    if (!labels) {
        labels = FUNC5 (catalog->mmgr);

        if (!labels)
            return catalog->error->error_no;

        if ((ret = FUNC3 (catalog, "PageLabels", labels)) != HPDF_OK)
            return ret;
    }

    nums = FUNC4 (labels, "Nums", HPDF_OCLASS_ARRAY);

    if (!nums) {
        nums = FUNC2 (catalog->mmgr);

        if (!nums)
            return catalog->error->error_no;

        if ((ret = FUNC3 (labels, "Nums", nums)) != HPDF_OK)
            return ret;
    }

    if ((ret = FUNC1 (nums, page_num)) != HPDF_OK)
        return ret;

    return FUNC0 (nums, page_label);
}