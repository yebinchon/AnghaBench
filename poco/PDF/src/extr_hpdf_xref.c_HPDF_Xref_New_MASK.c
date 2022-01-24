#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  error; } ;
struct TYPE_15__ {scalar_t__ start_offset; int /*<<< orphan*/  trailer; int /*<<< orphan*/  entries; scalar_t__ addr; int /*<<< orphan*/  error; TYPE_3__* mmgr; } ;
struct TYPE_14__ {int /*<<< orphan*/ * obj; int /*<<< orphan*/  gen_no; scalar_t__ byte_offset; int /*<<< orphan*/  entry_typ; } ;
typedef  int /*<<< orphan*/  HPDF_Xref_Rec ;
typedef  int /*<<< orphan*/  HPDF_XrefEntry_Rec ;
typedef  TYPE_1__* HPDF_XrefEntry ;
typedef  TYPE_2__* HPDF_Xref ;
typedef  scalar_t__ HPDF_UINT32 ;
typedef  TYPE_3__* HPDF_MMgr ;

/* Variables and functions */
 int /*<<< orphan*/  HPDF_DEFALUT_XREF_ENTRY_NUM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  HPDF_FREE_ENTRY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_MAX_GENERATION_NUM ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

HPDF_Xref
FUNC8  (HPDF_MMgr     mmgr,
                HPDF_UINT32   offset)
{
    HPDF_Xref xref;
    HPDF_XrefEntry new_entry;

    FUNC6((" HPDF_Xref_New\n"));

    xref = (HPDF_Xref)FUNC2 (mmgr, sizeof(HPDF_Xref_Rec));
    if (!xref)
        return NULL;

    FUNC5 (xref, 0, sizeof(HPDF_Xref_Rec));
    xref->mmgr = mmgr;
    xref->error = mmgr->error;
    xref->start_offset = offset;

    xref->entries = FUNC4 (mmgr, HPDF_DEFALUT_XREF_ENTRY_NUM);
    if (!xref->entries)
        goto Fail;

    xref->addr = 0;

    if (xref->start_offset == 0) {
        new_entry = (HPDF_XrefEntry)FUNC2 (mmgr,
                sizeof(HPDF_XrefEntry_Rec));
        if (!new_entry)
            goto Fail;

        if (FUNC3 (xref->entries, new_entry) != HPDF_OK) {
            FUNC1 (mmgr, new_entry);
            goto Fail;
        }

        /* add first entry which is free entry and whose generation
         * number is 0
         */
        new_entry->entry_typ = HPDF_FREE_ENTRY;
        new_entry->byte_offset = 0;
        new_entry->gen_no = HPDF_MAX_GENERATION_NUM;
        new_entry->obj = NULL;
    }

    xref->trailer = FUNC0 (mmgr);
    if (!xref->trailer)
        goto Fail;

    return xref;

Fail:
    FUNC6((" HPDF_Xref_New failed\n"));
    FUNC7 (xref);
    return NULL;
}