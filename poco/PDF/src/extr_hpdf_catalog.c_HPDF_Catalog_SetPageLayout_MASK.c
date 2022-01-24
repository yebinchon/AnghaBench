#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  scalar_t__ HPDF_PageLayout ;
typedef  size_t HPDF_INT ;
typedef  int /*<<< orphan*/  HPDF_Catalog ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * HPDF_PAGE_LAYOUT_NAMES ; 

HPDF_STATUS
FUNC1  (HPDF_Catalog      catalog,
                             HPDF_PageLayout   layout)
{
    return FUNC0 (catalog, "PageLayout",
                    HPDF_PAGE_LAYOUT_NAMES[(HPDF_INT)layout]);
}