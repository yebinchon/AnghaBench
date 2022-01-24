#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  error; int /*<<< orphan*/  mmgr; int /*<<< orphan*/  attr; } ;
struct TYPE_11__ {int /*<<< orphan*/  offset; } ;
struct TYPE_10__ {int /*<<< orphan*/  lsb; int /*<<< orphan*/  advance_width; } ;
struct TYPE_9__ {int num_glyphs; int num_h_metric; int /*<<< orphan*/  stream; TYPE_2__* h_metric; } ;
typedef  int /*<<< orphan*/  HPDF_UINT16 ;
typedef  int HPDF_UINT ;
typedef  TYPE_1__* HPDF_TTFontDefAttr ;
typedef  TYPE_2__ HPDF_TTF_LongHorMetric ;
typedef  TYPE_3__ HPDF_TTFTable ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_4__* HPDF_FontDef ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  HPDF_SEEK_SET ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_TTF_MISSING_TABLE ; 

__attribute__((used)) static HPDF_STATUS
FUNC8  (HPDF_FontDef  fontdef)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;
    HPDF_TTFTable *tbl = FUNC0 (fontdef, "hmtx");
    HPDF_STATUS ret;
    HPDF_UINT i;
    HPDF_UINT16 save_aw = 0;
    HPDF_TTF_LongHorMetric *pmetric;

    FUNC5 ((" HPDF_TTFontDef_ParseHtmx\n"));

    if (!tbl)
        return FUNC6 (fontdef->error, HPDF_TTF_MISSING_TABLE, 7);

    ret = FUNC7 (attr->stream, tbl->offset, HPDF_SEEK_SET);
    if (ret != HPDF_OK)
        return ret;

    /* allocate memory for a table of holizontal matrix.
     * the count of metric records is same as the number of glyphs
     */
    attr->h_metric = FUNC4 (fontdef->mmgr,
        sizeof (HPDF_TTF_LongHorMetric) * attr->num_glyphs);

    if (!attr->h_metric)
        return FUNC3 (fontdef->error);

    pmetric = attr->h_metric;
    for (i = 0; i < attr->num_h_metric; i++) {
        if ((ret = FUNC2 (attr->stream, &pmetric->advance_width)) !=
                    HPDF_OK)
            return ret;

        if ((ret = FUNC1 (attr->stream, &pmetric->lsb)) != HPDF_OK)
            return ret;

        FUNC5((" ParseHmtx metric[%u] aw=%u lsb=%d\n", i,
            pmetric->advance_width, pmetric->lsb));

        save_aw = pmetric->advance_width;
        pmetric++;
    }

    /* pad the advance_width of remaining metrics with the value of last metric */
    while (i < attr->num_glyphs) {
        pmetric->advance_width = save_aw;

        if ((ret = FUNC1 (attr->stream, &pmetric->lsb)) != HPDF_OK)
            return ret;

        pmetric++;
        i++;
    }

    return HPDF_OK;
}