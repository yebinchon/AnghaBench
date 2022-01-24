#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  error; int /*<<< orphan*/  mmgr; int /*<<< orphan*/  attr; } ;
struct TYPE_9__ {scalar_t__ length; scalar_t__ offset; scalar_t__ check_sum; int /*<<< orphan*/ * tag; } ;
struct TYPE_7__ {int num_tables; int search_range; int entry_selector; int range_shift; TYPE_3__* table; scalar_t__ sfnt_version; } ;
struct TYPE_8__ {int /*<<< orphan*/  stream; TYPE_1__ offset_tbl; } ;
typedef  int HPDF_UINT ;
typedef  TYPE_2__* HPDF_TTFontDefAttr ;
typedef  TYPE_3__ HPDF_TTFTable ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  int HPDF_INT ;
typedef  TYPE_4__* HPDF_FontDef ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  HPDF_TTF_INVALID_FOMAT ; 
 int HPDF_TTF_MAX_MEM_SIZ ; 

HPDF_STATUS
FUNC7 (HPDF_FontDef  fontdef)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;
    HPDF_STATUS ret = HPDF_OK;
    HPDF_INT i;
    HPDF_TTFTable *tbl;

    FUNC4 ((" HPDF_TTFontDef_LoadTTFTable\n"));

    ret += FUNC1 (attr->stream, &attr->offset_tbl.sfnt_version);
    ret += FUNC0 (attr->stream, &attr->offset_tbl.num_tables);
    ret += FUNC0 (attr->stream, &attr->offset_tbl.search_range);
    ret += FUNC0 (attr->stream, &attr->offset_tbl.entry_selector);
    ret += FUNC0 (attr->stream, &attr->offset_tbl.range_shift);

    if (ret != HPDF_OK)
        return FUNC2 (fontdef->error);

    if (attr->offset_tbl.num_tables * sizeof(HPDF_TTFTable) >
            HPDF_TTF_MAX_MEM_SIZ)
        return FUNC5 (fontdef->error, HPDF_TTF_INVALID_FOMAT, 0);

    attr->offset_tbl.table = FUNC3 (fontdef->mmgr,
                        sizeof(HPDF_TTFTable) * attr->offset_tbl.num_tables);
    if (!attr->offset_tbl.table)
        return FUNC2 (fontdef->error);

    tbl = attr->offset_tbl.table;
    for (i = 0; i < attr->offset_tbl.num_tables; i++) {
        HPDF_UINT siz = 4;

        ret += FUNC6 (attr->stream, (HPDF_BYTE *)tbl->tag, &siz);
        ret += FUNC1 (attr->stream, &tbl->check_sum);
        ret += FUNC1 (attr->stream, &tbl->offset);
        ret += FUNC1 (attr->stream, &tbl->length);

        FUNC4((" [%d] tag=[%c%c%c%c] check_sum=%u offset=%u length=%u\n",
                    i, tbl->tag[0], tbl->tag[1], tbl->tag[2], tbl->tag[3],
                    (HPDF_UINT)tbl->check_sum, (HPDF_UINT)tbl->offset,
                    (HPDF_UINT)tbl->length));

        if (ret != HPDF_OK)
            return FUNC2 (fontdef->error);;

        tbl++;
    }

    return HPDF_OK;
}