#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_20__ {TYPE_2__ header; int /*<<< orphan*/  before_write_fn; } ;
struct TYPE_17__ {int /*<<< orphan*/  obj_id; } ;
struct TYPE_19__ {TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  TYPE_3__* HPDF_String ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_4__* HPDF_Outline ;
typedef  TYPE_3__* HPDF_Number ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;
typedef  int /*<<< orphan*/  HPDF_Encoder ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  BeforeWrite ; 
 scalar_t__ FUNC1 (TYPE_4__*,char*,TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*,char*,char*) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  HPDF_OSUBCLASS_OUTLINE ; 
 int /*<<< orphan*/  HPDF_OTYPE_HIDDEN ; 
 int /*<<< orphan*/  HPDF_OUTLINE_OPENED ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_4__*) ; 

HPDF_Outline
FUNC8  (HPDF_MMgr          mmgr,
                   HPDF_Outline       parent,
                   const char   *title,
                   HPDF_Encoder       encoder,
                   HPDF_Xref          xref)
{
    HPDF_Outline outline;
    HPDF_String s;
    HPDF_STATUS ret = HPDF_OK;
    HPDF_Number open_flg;

    FUNC5((" HPDF_Outline_New\n"));

    if (!mmgr || !parent || !xref)
        return NULL;

    outline = FUNC3 (mmgr);
    if (!outline)
        return NULL;

    outline->before_write_fn = BeforeWrite;

    if (FUNC7 (xref, outline) != HPDF_OK)
        return NULL;

    s = FUNC6 (mmgr, title, encoder);
    if (!s)
        return NULL;
    else
        ret += FUNC1 (outline, "Title", s);

    open_flg = FUNC4 (mmgr, HPDF_OUTLINE_OPENED);
    if (!open_flg)
        return NULL;

    open_flg->header.obj_id |= HPDF_OTYPE_HIDDEN;
    ret += FUNC1 (outline, "_OPENED", open_flg);

    ret += FUNC2 (outline, "Type", "Outlines");
    ret += FUNC0 (parent, outline);

    if (ret != HPDF_OK)
        return NULL;

    outline->header.obj_class |= HPDF_OSUBCLASS_OUTLINE;

    return outline;
}