#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  obj_id; } ;
struct TYPE_15__ {TYPE_1__ header; } ;
struct TYPE_13__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_14__ {TYPE_2__ header; int /*<<< orphan*/  before_write_fn; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_3__* HPDF_Outline ;
typedef  TYPE_4__* HPDF_Number ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;

/* Variables and functions */
 int /*<<< orphan*/  BeforeWrite ; 
 scalar_t__ FUNC0 (TYPE_3__*,char*,TYPE_4__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,char*,char*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  HPDF_OSUBCLASS_OUTLINE ; 
 int /*<<< orphan*/  HPDF_OTYPE_HIDDEN ; 
 int /*<<< orphan*/  HPDF_OUTLINE_OPENED ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 

HPDF_Outline
FUNC6  (HPDF_MMgr   mmgr,
                       HPDF_Xref   xref)
{
    HPDF_Outline outline;
    HPDF_STATUS ret = HPDF_OK;
    HPDF_Number open_flg;

    FUNC4((" HPDF_OutlineRoot_New\n"));

    outline = FUNC2 (mmgr);
    if (!outline)
        return NULL;

    outline->before_write_fn = BeforeWrite;

    if (FUNC5 (xref, outline) != HPDF_OK)
        return NULL;

    open_flg = FUNC3 (mmgr, HPDF_OUTLINE_OPENED);
    if (!open_flg)
        return NULL;

    open_flg->header.obj_id |= HPDF_OTYPE_HIDDEN;

    ret += FUNC0 (outline, "_OPENED", open_flg);
    ret += FUNC1 (outline, "Type", "Outlines");

    if (ret != HPDF_OK)
        return NULL;

    outline->header.obj_class |= HPDF_OSUBCLASS_OUTLINE;

    return outline;
}