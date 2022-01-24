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
struct TYPE_5__ {scalar_t__ format; scalar_t__ length; scalar_t__ language; int glyph_id_array_count; int /*<<< orphan*/ * glyph_id_array; } ;
struct TYPE_6__ {TYPE_1__ cmap; int /*<<< orphan*/  stream; } ;
typedef  int /*<<< orphan*/  HPDF_UINT32 ;
typedef  int /*<<< orphan*/  HPDF_UINT16 ;
typedef  int HPDF_UINT ;
typedef  TYPE_2__* HPDF_TTFontDefAttr ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_3__* HPDF_FontDef ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  HPDF_SEEK_SET ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_TTF_INVALID_FOMAT ; 

__attribute__((used)) static HPDF_STATUS
FUNC7  (HPDF_FontDef  fontdef,
                    HPDF_UINT32   offset)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;
    HPDF_STATUS ret;
    HPDF_BYTE array[256];
    HPDF_UINT size;
    HPDF_UINT16 *parray;
    HPDF_UINT i;

    FUNC3((" ParseCMAP_format0\n"));

    ret = FUNC6 (attr->stream, offset, HPDF_SEEK_SET);
    if (ret != HPDF_OK)
        return ret;

    ret += FUNC0 (attr->stream, &attr->cmap.format);
    ret += FUNC0 (attr->stream, &attr->cmap.length);
    ret += FUNC0 (attr->stream, &attr->cmap.language);

    if (ret != HPDF_OK)
        return FUNC1 (fontdef->error);

    if (attr->cmap.format != 0)
        return FUNC4 (fontdef->error, HPDF_TTF_INVALID_FOMAT, 0);

    size = 256;
    ret = FUNC5 (attr->stream, array, &size);
    if (ret != HPDF_OK)
        return ret;

    attr->cmap.glyph_id_array_count = 256;
    attr->cmap.glyph_id_array = FUNC2 (fontdef->mmgr,
            sizeof (HPDF_UINT16) * 256);
    if (!attr->cmap.glyph_id_array)
        return FUNC1 (fontdef->error);

    parray = attr->cmap.glyph_id_array;
    for (i = 0; i < 256; i++) {
        *parray = attr->cmap.glyph_id_array[i];
        FUNC3((" ParseCMAP_format0 glyph_id_array[%d]=%u\n",
                    i, *parray));
        parray++;
    }

    return HPDF_OK;
}