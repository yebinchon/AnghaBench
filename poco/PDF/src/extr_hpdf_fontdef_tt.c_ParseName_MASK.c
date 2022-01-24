#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ base_font; int /*<<< orphan*/  flags; int /*<<< orphan*/  error; int /*<<< orphan*/  mmgr; int /*<<< orphan*/  attr; } ;
struct TYPE_13__ {int offset; } ;
struct TYPE_12__ {int platform_id; int encoding_id; int language_id; int name_id; int length; int offset; } ;
struct TYPE_10__ {int format; int count; int string_offset; TYPE_3__* name_records; } ;
struct TYPE_11__ {char* base_font; int /*<<< orphan*/  stream; TYPE_1__ name_tbl; } ;
typedef  int HPDF_UINT ;
typedef  TYPE_2__* HPDF_TTFontDefAttr ;
typedef  TYPE_3__ HPDF_TTF_NameRecord ;
typedef  TYPE_4__ HPDF_TTFTable ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_5__* HPDF_FontDef ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;

/* Variables and functions */
 TYPE_4__* FUNC0 (TYPE_5__*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_FONT_FOURCE_BOLD ; 
 int /*<<< orphan*/  HPDF_FONT_ITALIC ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int HPDF_LIMIT_MAX_NAME_LEN ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  HPDF_SEEK_SET ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_TTF_INVALID_FOMAT ; 
 int /*<<< orphan*/  HPDF_TTF_MISSING_TABLE ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int,int,char*) ; 

__attribute__((used)) static HPDF_STATUS
FUNC13  (HPDF_FontDef  fontdef)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;
    HPDF_TTFTable *tbl = FUNC0 (fontdef, "name");
    HPDF_STATUS ret;
    HPDF_UINT i;
    HPDF_TTF_NameRecord *name_rec;
    HPDF_UINT offset_id1 = 0;
    HPDF_UINT offset_id2 = 0;
    HPDF_UINT offset_id1u = 0;
    HPDF_UINT offset_id2u = 0;
    HPDF_UINT len_id1 = 0;
    HPDF_UINT len_id2 = 0;
    HPDF_UINT len_id1u = 0;
    HPDF_UINT len_id2u = 0;
    char tmp[HPDF_LIMIT_MAX_NAME_LEN + 1];

    FUNC7 ((" HPDF_TTFontDef_ParseMaxp\n"));

    if (!tbl)
        return FUNC8 (fontdef->error, HPDF_TTF_MISSING_TABLE, 10);

    ret = FUNC11 (attr->stream, tbl->offset, HPDF_SEEK_SET);
    if (ret != HPDF_OK)
        return ret;

    ret += FUNC1 (attr->stream, &attr->name_tbl.format);
    ret += FUNC1 (attr->stream, &attr->name_tbl.count);
    ret += FUNC1 (attr->stream, &attr->name_tbl.string_offset);
    if (ret != HPDF_OK)
        return FUNC2 (fontdef->error);

    FUNC7((" ParseName() format=%u, count=%u, string_offset=%u\n",
                attr->name_tbl.format, attr->name_tbl.count,
                attr->name_tbl.string_offset));

    attr->name_tbl.name_records = FUNC3 (fontdef->mmgr,
            sizeof (HPDF_TTF_NameRecord) * attr->name_tbl.count);

    if (!attr->name_tbl.name_records)
        return FUNC2 (fontdef->error);

    name_rec = attr->name_tbl.name_records;

   for (i = 0; i < attr->name_tbl.count; i++) {
        ret += FUNC1 (attr->stream, &name_rec->platform_id);
        ret += FUNC1 (attr->stream, &name_rec->encoding_id);
        ret += FUNC1 (attr->stream, &name_rec->language_id);
        ret += FUNC1 (attr->stream, &name_rec->name_id);
        ret += FUNC1 (attr->stream, &name_rec->length);
        ret += FUNC1 (attr->stream, &name_rec->offset);

        if (ret != HPDF_OK)
            return FUNC2 (fontdef->error);

        FUNC7((" ParseName() platformID=%u, encodingID=%d, nameID=%d\n",
                    name_rec->platform_id, name_rec->encoding_id,
                    name_rec->name_id));

        if (name_rec->platform_id == 1 && name_rec->encoding_id == 0 &&
                name_rec->name_id == 6) {
            offset_id1 = tbl->offset + name_rec->offset +
                    attr->name_tbl.string_offset;
            len_id1 = name_rec->length;
        }

        if (name_rec->platform_id == 1 && name_rec->encoding_id == 0 &&
                name_rec->name_id == 2) {
            offset_id2 = tbl->offset + name_rec->offset +
                    attr->name_tbl.string_offset;
            len_id2 = name_rec->length;
        }

        if (name_rec->platform_id == 3 && name_rec->encoding_id == 1 &&
                name_rec->name_id == 6 && name_rec->language_id == 0x0409) {
            offset_id1u = tbl->offset + name_rec->offset +
                    attr->name_tbl.string_offset;
            len_id1u = name_rec->length;
        }

        if (name_rec->platform_id == 3 && name_rec->encoding_id == 1 &&
                name_rec->name_id == 2 && name_rec->language_id == 0x0409) {
            offset_id2u = tbl->offset + name_rec->offset +
                    attr->name_tbl.string_offset;
            len_id2u = name_rec->length;
        }

        name_rec++;
    }

    if ((!offset_id1 && !offset_id1u) ||
            (!offset_id2 && !offset_id2u))
        return FUNC8 (fontdef->error, HPDF_TTF_INVALID_FOMAT, 0);

    if (len_id1 == 0 && len_id1u > 0)
        len_id1 = len_id1u / 2 + len_id1u % 2;

    if (len_id2 == 0 && len_id2u > 0)
        len_id2 = len_id2u / 2 + len_id2u % 2;

    if (len_id1 + len_id2 + 8 > 127)
        return FUNC8 (fontdef->error, HPDF_TTF_INVALID_FOMAT, 0);

    FUNC6 (attr->base_font, 0, HPDF_LIMIT_MAX_NAME_LEN + 1);

    if (offset_id1) {
        if ((ret = FUNC11 (attr->stream, offset_id1,
                HPDF_SEEK_SET)) != HPDF_OK)
        return ret;

        if ((ret = FUNC10 (attr->stream, (HPDF_BYTE *)attr->base_font, &len_id1))
                 != HPDF_OK)
            return ret;
    } else {
        if ((ret = FUNC12 (attr->stream, offset_id1u, len_id1u,
                attr->base_font)) != HPDF_OK)
            return ret;
    }

    FUNC6 (tmp, 0, HPDF_LIMIT_MAX_NAME_LEN + 1);

    if (offset_id2) {
        if ((ret = FUNC11 (attr->stream, offset_id2, HPDF_SEEK_SET))
                != HPDF_OK)
            return ret;

        if ((ret = FUNC10 (attr->stream, (HPDF_BYTE *)tmp, &len_id2)) != HPDF_OK)
            return ret;
    } else {
        if ((ret = FUNC12 (attr->stream, offset_id2u, len_id2u,
                tmp)) != HPDF_OK)
            return ret;
    }

   /*
    * get "postscript name" of from a "name" table as BaseName.
    * if subfamily name is not "Regular", add subfamily name to BaseName.
    * if subfamily name includes the blank character, remove it.
    * if subfamily name is "Bold" or "Italic" or "BoldItalic", set flags
    * attribute.
    */
    if (FUNC4 ((HPDF_BYTE *)tmp, (HPDF_BYTE *)"Regular", 7) != 0) {
        char *dst = attr->base_font + len_id1;
        char *src = tmp;
        HPDF_UINT j;

        *dst++ = ',';

        for (j = 0; j < len_id2; j++) {
            if (*src != ' ')
                *dst++ = *src++;

            if (dst >= attr->base_font + HPDF_LIMIT_MAX_NAME_LEN)
                break;
        }

        *dst = 0;

        if (FUNC9 (tmp, "Bold", len_id2))
            fontdef->flags |= HPDF_FONT_FOURCE_BOLD;
        if (FUNC9 (tmp, "Italic", len_id2))
            fontdef->flags |= HPDF_FONT_ITALIC;
    }

    FUNC5 ((HPDF_BYTE *)fontdef->base_font, (HPDF_BYTE *)attr->base_font, HPDF_LIMIT_MAX_NAME_LEN + 1);

    FUNC7(("  ParseName() base_font=%s\n", attr->base_font));

    return HPDF_OK;
}