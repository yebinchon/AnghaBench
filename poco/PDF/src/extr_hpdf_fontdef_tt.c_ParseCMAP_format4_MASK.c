#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  error; int /*<<< orphan*/  mmgr; int /*<<< orphan*/  attr; } ;
struct TYPE_5__ {int format; int length; int language; int seg_count_x2; int search_range; int entry_selector; int range_shift; int reserved_pad; int glyph_id_array_count; int /*<<< orphan*/ * id_range_offset; int /*<<< orphan*/ * id_delta; int /*<<< orphan*/ * end_count; int /*<<< orphan*/ * start_count; int /*<<< orphan*/ * glyph_id_array; } ;
struct TYPE_6__ {TYPE_1__ cmap; int /*<<< orphan*/  stream; } ;
typedef  scalar_t__ HPDF_UINT32 ;
typedef  int /*<<< orphan*/  HPDF_UINT16 ;
typedef  int HPDF_UINT ;
typedef  TYPE_2__* HPDF_TTFontDefAttr ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  scalar_t__ HPDF_INT32 ;
typedef  int /*<<< orphan*/  HPDF_INT16 ;
typedef  TYPE_3__* HPDF_FontDef ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  HPDF_SEEK_SET ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_TTF_INVALID_FOMAT ; 

__attribute__((used)) static HPDF_STATUS
FUNC8  (HPDF_FontDef  fontdef,
                    HPDF_UINT32   offset)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;
    HPDF_STATUS ret;
    HPDF_UINT i;
    HPDF_UINT16 *pend_count;
    HPDF_UINT16 *pstart_count;
    HPDF_INT16 *pid_delta;
    HPDF_UINT16 *pid_range_offset;
    HPDF_UINT16 *pglyph_id_array;
    HPDF_INT32 num_read;

    FUNC4((" ParseCMAP_format4\n"));

    if ((ret = FUNC6 (attr->stream, offset, HPDF_SEEK_SET)) !=
            HPDF_OK)
        return ret;

    ret += FUNC1 (attr->stream, &attr->cmap.format);
    ret += FUNC1 (attr->stream, &attr->cmap.length);
    ret += FUNC1 (attr->stream, &attr->cmap.language);

    if (ret != HPDF_OK)
        return FUNC2 (fontdef->error);

    if (attr->cmap.format != 4)
        return FUNC5 (fontdef->error, HPDF_TTF_INVALID_FOMAT, 0);

    ret += FUNC1 (attr->stream, &attr->cmap.seg_count_x2);
    ret += FUNC1 (attr->stream, &attr->cmap.search_range);
    ret += FUNC1 (attr->stream, &attr->cmap.entry_selector);
    ret += FUNC1 (attr->stream, &attr->cmap.range_shift);

    if (ret != HPDF_OK)
        return FUNC2 (fontdef->error);

    /* end_count */
    attr->cmap.end_count = FUNC3 (fontdef->mmgr,
            sizeof(HPDF_UINT16) * attr->cmap.seg_count_x2 / 2);
    if (!attr->cmap.end_count)
        return FUNC2 (fontdef->error);

    pend_count = attr->cmap.end_count;
    for (i = 0; i < (HPDF_UINT)attr->cmap.seg_count_x2 / 2; i++)
        if ((ret = FUNC1 (attr->stream, pend_count++)) != HPDF_OK)
            return ret;

    if ((ret = FUNC1 (attr->stream, &attr->cmap.reserved_pad)) != HPDF_OK)
        return ret;

    /* start_count */
    attr->cmap.start_count = FUNC3 (fontdef->mmgr,
            sizeof(HPDF_UINT16) * attr->cmap.seg_count_x2 / 2);
    if (!attr->cmap.start_count)
        return FUNC2 (fontdef->error);

    pstart_count = attr->cmap.start_count;
    for (i = 0; i < (HPDF_UINT)attr->cmap.seg_count_x2 / 2; i++)
        if ((ret = FUNC1 (attr->stream, pstart_count++)) != HPDF_OK)
            return ret;

    /* id_delta */
    attr->cmap.id_delta = FUNC3 (fontdef->mmgr,
            sizeof(HPDF_UINT16) * attr->cmap.seg_count_x2 / 2);
    if (!attr->cmap.id_delta)
        return FUNC2 (fontdef->error);

    pid_delta = attr->cmap.id_delta;
    for (i = 0; i < (HPDF_UINT)attr->cmap.seg_count_x2 / 2; i++)
        if ((ret = FUNC0 (attr->stream, pid_delta++)) != HPDF_OK)
            return ret;

    /* id_range_offset */
    attr->cmap.id_range_offset = FUNC3 (fontdef->mmgr,
            sizeof(HPDF_UINT16) * attr->cmap.seg_count_x2 / 2);
    if (!attr->cmap.id_range_offset)
        return FUNC2 (fontdef->error);

    pid_range_offset = attr->cmap.id_range_offset;
    for (i = 0; i < (HPDF_UINT)attr->cmap.seg_count_x2 / 2; i++)
        if ((ret = FUNC1 (attr->stream, pid_range_offset++)) != HPDF_OK)
            return ret;

    num_read = FUNC7 (attr->stream) - offset;
    if (num_read < 0)
        return FUNC2 (fontdef->error);

    attr->cmap.glyph_id_array_count = (attr->cmap.length - num_read) / 2;

    if (attr->cmap.glyph_id_array_count > 0) {
        /* glyph_id_array */
        attr->cmap.glyph_id_array = FUNC3 (fontdef->mmgr,
                sizeof(HPDF_UINT16) * attr->cmap.glyph_id_array_count);
        if (!attr->cmap.glyph_id_array)
            return FUNC2 (fontdef->error);

        pglyph_id_array = attr->cmap.glyph_id_array;
        for (i = 0; i < attr->cmap.glyph_id_array_count; i++)
            if ((ret = FUNC1 (attr->stream, pglyph_id_array++)) != HPDF_OK)
                return ret;
    } else
        attr->cmap.glyph_id_array = NULL;

#ifdef LIBHPDF_DEBUG
    /* print all elements of cmap table */
    for (i = 0; i < (HPDF_UINT)attr->cmap.seg_count_x2 / 2; i++) {
        HPDF_PTRACE((" ParseCMAP_format4[%d] start_count=0x%04X, "
                    "end_count=0x%04X, id_delta=%d, id_range_offset=%u\n", i,
                    attr->cmap.start_count[i], attr->cmap.end_count[i],
                    attr->cmap.id_delta[i], attr->cmap.id_range_offset[i]));
    }
#endif

    return HPDF_OK;
}