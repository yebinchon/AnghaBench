#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_12__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_19__ {int /*<<< orphan*/  mmgr; TYPE_2__* attr; int /*<<< orphan*/  before_write_fn; int /*<<< orphan*/  free_fn; TYPE_1__ header; } ;
struct TYPE_18__ {TYPE_12__* contents; int /*<<< orphan*/  xref; int /*<<< orphan*/  stream; int /*<<< orphan*/  gstate; void* text_pos; void* cur_pos; int /*<<< orphan*/  gmode; } ;
struct TYPE_16__ {int /*<<< orphan*/  stream; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  int /*<<< orphan*/  HPDF_PageAttr_Rec ;
typedef  TYPE_2__* HPDF_PageAttr ;
typedef  TYPE_3__* HPDF_Page ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;
typedef  int /*<<< orphan*/  HPDF_INT16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 TYPE_12__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_DEF_PAGE_HEIGHT ; 
 scalar_t__ HPDF_DEF_PAGE_WIDTH ; 
 TYPE_12__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*,char*,TYPE_12__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_GMODE_PAGE_DESCRIPTION ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  HPDF_OSUBCLASS_PAGE ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  Page_BeforeWrite ; 
 int /*<<< orphan*/  Page_OnFree ; 

HPDF_Page
FUNC14  (HPDF_MMgr   mmgr,
                HPDF_Xref   xref)
{
    HPDF_STATUS ret;
    HPDF_PageAttr attr;
    HPDF_Page page;

    FUNC10((" HPDF_Page_New\n"));

    page = FUNC6 (mmgr);
    if (!page)
        return NULL;

    page->header.obj_class |= HPDF_OSUBCLASS_PAGE;
    page->free_fn = Page_OnFree;
    page->before_write_fn = Page_BeforeWrite;

    attr = FUNC8 (page->mmgr, sizeof(HPDF_PageAttr_Rec));
    if (!attr) {
        FUNC5 (page);
        return NULL;
    }

    page->attr = attr;
    FUNC9 (attr, 0, sizeof(HPDF_PageAttr_Rec));
    attr->gmode = HPDF_GMODE_PAGE_DESCRIPTION;
    attr->cur_pos = FUNC12 (0, 0);
    attr->text_pos = FUNC12 (0, 0);

    ret = FUNC13 (xref, page);
    if (ret != HPDF_OK)
        return NULL;

    attr->gstate = FUNC7 (page->mmgr, NULL);
    attr->contents = FUNC2 (page->mmgr, xref);

    if (!attr->gstate || !attr->contents)
        return NULL;

    attr->stream = attr->contents->stream;
    attr->xref = xref;

    /* add requiered elements */
    ret += FUNC4 (page, "Type", "Page");
    ret += FUNC3 (page, "MediaBox", FUNC1 (page->mmgr,
                FUNC11 (0, 0, (HPDF_INT16)(HPDF_DEF_PAGE_WIDTH), (HPDF_INT16)(HPDF_DEF_PAGE_HEIGHT))));
    ret += FUNC3 (page, "Contents", attr->contents);

    ret += FUNC0 (page);

    if (ret != HPDF_OK)
        return NULL;

    return page;
}