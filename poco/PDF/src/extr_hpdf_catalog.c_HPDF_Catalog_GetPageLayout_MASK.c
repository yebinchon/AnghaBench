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
struct TYPE_2__ {int /*<<< orphan*/  value; } ;
typedef  size_t HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_PageLayout ;
typedef  TYPE_1__* HPDF_Name ;
typedef  int /*<<< orphan*/  HPDF_Catalog ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_OCLASS_NAME ; 
 int /*<<< orphan*/  HPDF_PAGE_LAYOUT_EOF ; 
 scalar_t__* HPDF_PAGE_LAYOUT_NAMES ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

HPDF_PageLayout
FUNC2  (HPDF_Catalog  catalog)
{
    HPDF_Name layout;
    HPDF_UINT i = 0;

    layout = (HPDF_Name)FUNC0 (catalog, "PageLayout",
            HPDF_OCLASS_NAME);
    if (!layout)
        return HPDF_PAGE_LAYOUT_EOF;

    while (HPDF_PAGE_LAYOUT_NAMES[i]) {
        if (FUNC1 (layout->value, HPDF_PAGE_LAYOUT_NAMES[i]) == 0)
            return (HPDF_PageLayout)i;
        i++;
    }

    return HPDF_PAGE_LAYOUT_EOF;
}