#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_17__ ;

/* Type definitions */
struct TYPE_28__ {scalar_t__ missing_width; void* x_height; void* cap_height; int /*<<< orphan*/  error; int /*<<< orphan*/  attr; } ;
struct TYPE_27__ {int /*<<< orphan*/  offset; } ;
struct TYPE_25__ {int units_per_em; } ;
struct TYPE_23__ {int /*<<< orphan*/  base_offset; } ;
struct TYPE_26__ {int /*<<< orphan*/ * stream; TYPE_3__ header; TYPE_2__* h_metric; TYPE_1__ glyph_tbl; int /*<<< orphan*/  embedding; } ;
struct TYPE_24__ {scalar_t__ advance_width; } ;
struct TYPE_22__ {scalar_t__ top; } ;
typedef  int HPDF_UINT32 ;
typedef  void* HPDF_UINT16 ;
typedef  int /*<<< orphan*/  HPDF_UINT ;
typedef  TYPE_4__* HPDF_TTFontDefAttr ;
typedef  TYPE_5__ HPDF_TTFTable ;
typedef  int /*<<< orphan*/ * HPDF_Stream ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  scalar_t__ HPDF_INT16 ;
typedef  TYPE_6__* HPDF_FontDef ;
typedef  int /*<<< orphan*/  HPDF_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 TYPE_5__* FUNC1 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  HPDF_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  HPDF_SEEK_SET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_TTF_MISSING_TABLE ; 
 TYPE_17__ FUNC6 (TYPE_6__*,void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*) ; 

__attribute__((used)) static HPDF_STATUS
FUNC16 (HPDF_FontDef  fontdef,
              HPDF_Stream   stream,
              HPDF_BOOL     embedding,
              HPDF_UINT     offset)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;
    HPDF_STATUS ret;
    HPDF_TTFTable *tbl;

    FUNC2 ((" HPDF_TTFontDef_LoadFontData\n"));

    attr->stream = stream;
    attr->embedding = embedding;

    if ((ret = FUNC5 (stream, offset, HPDF_SEEK_SET)) != HPDF_OK)
        return ret;

    if ((ret = FUNC7 (fontdef)) != HPDF_OK)
        return ret;

#ifdef HPDF_DUMP_FONTDATA
    DumpTable (fontdef);
#endif /* HPDF_DUMP_FONTDATA */

    if ((ret = FUNC9 (fontdef)) != HPDF_OK)
        return ret;

    if ((ret = FUNC13 (fontdef)) != HPDF_OK)
        return ret;

    if ((ret = FUNC10 (fontdef)) != HPDF_OK)
        return ret;

    if ((ret = FUNC8 (fontdef)) != HPDF_OK)
        return ret;

    if ((ret = FUNC11 (fontdef)) != HPDF_OK)
        return ret;

    if ((ret = FUNC12 (fontdef)) != HPDF_OK)
        return ret;

    if ((ret = FUNC14 (fontdef)) != HPDF_OK)
        return ret;

    if ((ret = FUNC15 (fontdef)) != HPDF_OK)
        return ret;

    tbl = FUNC1 (fontdef, "glyf");
    if (!tbl)
        return FUNC3 (fontdef->error, HPDF_TTF_MISSING_TABLE, 4);

    attr->glyph_tbl.base_offset = tbl->offset;
    fontdef->cap_height =
                (HPDF_UINT16)FUNC6 (fontdef, (HPDF_UINT16)'H').top;
    fontdef->x_height =
                (HPDF_UINT16)FUNC6 (fontdef, (HPDF_UINT16)'x').top;
    fontdef->missing_width = (HPDF_INT16)((HPDF_UINT32)attr->h_metric[0].advance_width * 1000 /
                attr->header.units_per_em);

    FUNC2 ((" fontdef->cap_height=%d\n", fontdef->cap_height));
    FUNC2 ((" fontdef->x_height=%d\n", fontdef->x_height));
    FUNC2 ((" fontdef->missing_width=%d\n", fontdef->missing_width));

    if (!embedding) {
        FUNC4 (attr->stream);
        attr->stream = NULL;
    }

    return HPDF_OK;
}