#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_8__ {TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_2__* HPDF_NameTree ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;
typedef  int /*<<< orphan*/  HPDF_Array ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  HPDF_OSUBCLASS_NAMETREE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 

HPDF_NameTree
FUNC5  (HPDF_MMgr  mmgr,
                    HPDF_Xref  xref)
{
    HPDF_STATUS ret = HPDF_OK;
    HPDF_NameTree ntree;
    HPDF_Array items;

    FUNC3((" HPDF_NameTree_New\n"));

    ntree = FUNC2 (mmgr);
    if (!ntree)
        return NULL;

    if (FUNC4 (xref, ntree) != HPDF_OK)
        return NULL;

    ntree->header.obj_class |= HPDF_OSUBCLASS_NAMETREE;

    items = FUNC0 (mmgr);
    if (!ntree)
        return NULL;

    ret += FUNC1 (ntree, "Names", items);
    if (ret != HPDF_OK)
        return NULL;

    return ntree;
}