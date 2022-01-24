#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  error; int /*<<< orphan*/  attr; } ;
struct TYPE_10__ {scalar_t__ offset; } ;
struct TYPE_9__ {int /*<<< orphan*/  stream; } ;
typedef  scalar_t__ HPDF_UINT32 ;
typedef  scalar_t__ HPDF_UINT16 ;
typedef  scalar_t__ HPDF_UINT ;
typedef  TYPE_1__* HPDF_TTFontDefAttr ;
typedef  TYPE_2__ HPDF_TTFTable ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  scalar_t__ HPDF_INT32 ;
typedef  TYPE_3__* HPDF_FontDef ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  HPDF_SEEK_SET ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_TTF_INVALID_FOMAT ; 
 int /*<<< orphan*/  HPDF_TTF_MISSING_TABLE ; 
 scalar_t__ FUNC8 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC9 (TYPE_3__*,scalar_t__) ; 

__attribute__((used)) static HPDF_STATUS
FUNC10 (HPDF_FontDef  fontdef)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;
    HPDF_TTFTable *tbl = FUNC0 (fontdef, "cmap");
    HPDF_STATUS ret;
    HPDF_UINT16 version;
    HPDF_UINT16 num_cmap;
    HPDF_UINT i;
    HPDF_UINT32 ms_unicode_encoding_offset = 0;
    HPDF_UINT32 byte_encoding_offset = 0;

    FUNC4 ((" HPDF_TTFontDef_ParseCMap\n"));

    if (!tbl)
        return FUNC5 (fontdef->error, HPDF_TTF_MISSING_TABLE, 1);

    ret = FUNC6 (attr->stream, tbl->offset, HPDF_SEEK_SET);
    if (ret != HPDF_OK)
        return ret;

    ret += FUNC1 (attr->stream, &version);
    if (ret != HPDF_OK)
        return FUNC3 (fontdef->error);

    if (version != 0)
        return FUNC5 (fontdef->error, HPDF_TTF_INVALID_FOMAT, 0);

    ret += FUNC1 (attr->stream, &num_cmap);
    if (ret != HPDF_OK)
        return FUNC3 (fontdef->error);

    for (i = 0; i < num_cmap; i++) {
        HPDF_UINT16 platformID;
        HPDF_UINT16 encodingID;
        HPDF_UINT16 format;
        HPDF_UINT32 offset;
        HPDF_INT32 save_offset;

        ret += FUNC1 (attr->stream, &platformID);
        ret += FUNC1 (attr->stream, &encodingID);
        ret += FUNC2 (attr->stream, &offset);
        if (ret != HPDF_OK)
            return FUNC3 (fontdef->error);

        save_offset = FUNC7 (attr->stream);
        if (save_offset < 0)
           return FUNC3 (fontdef->error);

        ret = FUNC6 (attr->stream, tbl->offset + offset,
                HPDF_SEEK_SET);
        if (ret != HPDF_OK)
           return ret;

        ret = FUNC1 (attr->stream, &format);
        if (ret != HPDF_OK)
           return ret;

        FUNC4((" HPDF_TTFontDef_ParseCMap tables[%d] platformID=%u "
                        "encodingID=%u format=%u offset=%u\n", i, platformID,
                        encodingID, format, (HPDF_UINT)offset));

        /* MS-Unicode-CMAP is used for priority */
        if (platformID == 3 && encodingID == 1 && format == 4) {
            ms_unicode_encoding_offset = offset;
            break;
        }

        /* Byte-Encoding-CMAP will be used if MS-Unicode-CMAP is not found */
        if (platformID == 1 && encodingID ==0 && format == 1)
            byte_encoding_offset = offset;

        ret = FUNC6 (attr->stream, save_offset, HPDF_SEEK_SET);
        if (ret != HPDF_OK)
           return ret;
    }

    if (ms_unicode_encoding_offset != 0) {
        FUNC4((" found microsoft unicode cmap.\n"));
        ret = FUNC9(fontdef, ms_unicode_encoding_offset +
                tbl->offset);
    } else if (byte_encoding_offset != 0) {
        FUNC4((" found byte encoding cmap.\n"));
        ret = FUNC8(fontdef, byte_encoding_offset + tbl->offset);
    } else {
        FUNC4((" cannot found target cmap.\n"));
        return FUNC5 (fontdef->error, HPDF_TTF_INVALID_FOMAT, 0);
    }

    return ret;
}