#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_12__ {int /*<<< orphan*/  mmgr; int /*<<< orphan*/  before_write_fn; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_2__* HPDF_Pages ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,char*,char*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  HPDF_OSUBCLASS_PAGES ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  Pages_BeforeWrite ; 

HPDF_Pages
FUNC8  (HPDF_MMgr   mmgr,
                 HPDF_Pages  parent,
                 HPDF_Xref   xref)
{
    HPDF_STATUS ret = HPDF_OK;
    HPDF_Pages pages;


    FUNC5((" HPDF_Pages_New\n"));

    pages = FUNC3 (mmgr);
    if (!pages)
        return NULL;

    pages->header.obj_class |= HPDF_OSUBCLASS_PAGES;
    pages->before_write_fn = Pages_BeforeWrite;

    if (FUNC7 (xref, pages) != HPDF_OK)
        return NULL;

    /* add requiered elements */
    ret += FUNC2 (pages, "Type", "Pages");
    ret += FUNC1 (pages, "Kids", FUNC0 (pages->mmgr));
    ret += FUNC1 (pages, "Count", FUNC4 (pages->mmgr, 0));

    if (ret == HPDF_OK && parent)
        ret += FUNC6 (parent, pages);

    if (ret != HPDF_OK)
        return NULL;

    return pages;
}