#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_9__ {TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;
typedef  TYPE_2__* HPDF_Catalog ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,char*,char*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  HPDF_OSUBCLASS_CATALOG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 

HPDF_Catalog
FUNC5  (HPDF_MMgr  mmgr,
                   HPDF_Xref  xref)
{
    HPDF_Catalog catalog;
    HPDF_STATUS ret = 0;

    catalog = FUNC2 (mmgr);
    if (!catalog)
        return NULL;

    catalog->header.obj_class |= HPDF_OSUBCLASS_CATALOG;

    if (FUNC4 (xref, catalog) != HPDF_OK)
        return NULL;

    /* add requiered elements */
    ret += FUNC1 (catalog, "Type", "Catalog");
    ret += FUNC0 (catalog, "Pages", FUNC3 (mmgr, NULL, xref));

    if (ret != HPDF_OK)
        return NULL;

    return catalog;
}