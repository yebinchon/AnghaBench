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
struct TYPE_10__ {int /*<<< orphan*/  unicode; void* width; void* char_cd; } ;
struct TYPE_7__ {void* top; void* right; void* bottom; void* left; } ;
struct TYPE_9__ {int base_font; scalar_t__ italic_angle; int /*<<< orphan*/  error; int /*<<< orphan*/  mmgr; void* stemv; void* stemh; void* descent; void* ascent; void* cap_height; TYPE_1__ font_bbox; int /*<<< orphan*/  flags; int /*<<< orphan*/  attr; } ;
struct TYPE_8__ {int char_set; int encoding_scheme; int widths_count; TYPE_4__* widths; } ;
typedef  void* HPDF_UINT16 ;
typedef  scalar_t__ HPDF_UINT ;
typedef  TYPE_2__* HPDF_Type1FontDefAttr ;
typedef  int /*<<< orphan*/  HPDF_Stream ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  void* HPDF_REAL ;
typedef  void* HPDF_INT16 ;
typedef  TYPE_3__* HPDF_FontDef ;
typedef  TYPE_4__ HPDF_CharData ;

/* Variables and functions */
 char* FUNC0 (char const*,char*,int) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_FONT_FIXED_WIDTH ; 
 int /*<<< orphan*/  HPDF_FONT_FOURCE_BOLD ; 
 int /*<<< orphan*/  HPDF_FONT_ITALIC ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int HPDF_INT_LEN ; 
 int /*<<< orphan*/  HPDF_INVALID_AFM_HEADER ; 
 int /*<<< orphan*/  HPDF_INVALID_CHAR_MATRICS_DATA ; 
 int /*<<< orphan*/  HPDF_INVALID_N_DATA ; 
 int /*<<< orphan*/  HPDF_INVALID_WX_DATA ; 
 int HPDF_LIMIT_MAX_NAME_LEN ; 
 int /*<<< orphan*/  HPDF_LIMIT_MAX_STRING_LEN ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HPDF_OK ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char const*,int) ; 
 scalar_t__ FUNC10 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC11 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int HPDF_TMP_BUF_SIZ ; 

__attribute__((used)) static HPDF_STATUS
FUNC13 (HPDF_FontDef  fontdef,
         HPDF_Stream   stream)
{
    HPDF_Type1FontDefAttr attr = (HPDF_Type1FontDefAttr)fontdef->attr;
    char buf[HPDF_TMP_BUF_SIZ];
    HPDF_CharData* cdata;
    HPDF_STATUS ret;
    HPDF_UINT len;
    char keyword[HPDF_LIMIT_MAX_NAME_LEN + 1];
    HPDF_UINT i;

    FUNC6 ((" LoadAfm\n"));

    len = HPDF_TMP_BUF_SIZ;

    /* chaeck AFM header */
    if ((ret = FUNC12 (stream, buf, &len)) != HPDF_OK)
         return ret;

    FUNC0 (buf, keyword, HPDF_LIMIT_MAX_NAME_LEN + 1);

    if (FUNC8 (keyword, "StartFontMetrics") != 0)
        return HPDF_INVALID_AFM_HEADER;

    /* Global Font Information */

    for (;;) {
        const char *s;

        len = HPDF_TMP_BUF_SIZ;
        if ((ret = FUNC12 (stream, buf, &len)) != HPDF_OK)
            return ret;

        s = FUNC0 (buf, keyword, HPDF_LIMIT_MAX_NAME_LEN + 1);

        if (FUNC8 (keyword, "FontName") == 0) {
            FUNC9 (fontdef->base_font, s,
                    fontdef->base_font + HPDF_LIMIT_MAX_NAME_LEN);
        } else

        if (FUNC8 (keyword, "Weight") == 0) {
            if (FUNC8 (s, "Bold") == 0)
                fontdef->flags |= HPDF_FONT_FOURCE_BOLD;
        } else

        if (FUNC8 (keyword, "IsFixedPitch") == 0) {
            if (FUNC8 (s, "true") == 0)
               fontdef->flags |= HPDF_FONT_FIXED_WIDTH;
        } else

        if (FUNC8 (keyword, "ItalicAngle") == 0) {
            fontdef->italic_angle = (HPDF_INT16)FUNC1 (s);
            if (fontdef->italic_angle != 0)
                fontdef->flags |= HPDF_FONT_ITALIC;
        } else

        if (FUNC8 (keyword, "CharacterSet") == 0) {
            HPDF_UINT len = FUNC10 (s, HPDF_LIMIT_MAX_STRING_LEN);

            if (len > 0) {
                attr->char_set = FUNC3 (fontdef->mmgr, len + 1);
                if (!attr->char_set)
                    return FUNC2 (fontdef->error);

                FUNC9 (attr->char_set, s, attr->char_set + len);
            }
        } else
        if (FUNC8 (keyword, "FontBBox") == 0) {
            char buf[HPDF_INT_LEN + 1];

            s = FUNC0 (s, buf, HPDF_INT_LEN + 1);
            fontdef->font_bbox.left = (HPDF_REAL)FUNC1 (buf);

            s = FUNC0 (s, buf, HPDF_INT_LEN + 1);
            fontdef->font_bbox.bottom = (HPDF_REAL)FUNC1 (buf);

            s = FUNC0 (s, buf, HPDF_INT_LEN + 1);
            fontdef->font_bbox.right = (HPDF_REAL)FUNC1 (buf);

            FUNC0 (s, buf, HPDF_INT_LEN + 1);
            fontdef->font_bbox.top = (HPDF_REAL)FUNC1 (buf);
        } else
        if (FUNC8 (keyword, "EncodingScheme") == 0) {
            FUNC9 (attr->encoding_scheme, s,
                    attr->encoding_scheme + HPDF_LIMIT_MAX_NAME_LEN);
        } else
        if (FUNC8 (keyword, "CapHeight") == 0) {
            fontdef->cap_height = (HPDF_UINT16)FUNC1 (s);
        } else
        if (FUNC8 (keyword, "Ascender") == 0) {
            fontdef->ascent = (HPDF_INT16)FUNC1 (s);
        } else
        if (FUNC8 (keyword, "Descender") == 0) {
            fontdef->descent = (HPDF_INT16)FUNC1 (s);
        } else
        if (FUNC8 (keyword, "STDHW") == 0) {
            fontdef->stemh = (HPDF_UINT16)FUNC1 (s);
        } else
        if (FUNC8 (keyword, "STDHV") == 0) {
            fontdef->stemv = (HPDF_UINT16)FUNC1 (s);
        } else
        if (FUNC8 (keyword, "StartCharMetrics") == 0) {
            attr->widths_count = FUNC1 (s);
            break;
        }
    }

    cdata = (HPDF_CharData*)FUNC3 (fontdef->mmgr,
            sizeof(HPDF_CharData) * attr->widths_count);
    if (cdata == NULL)
        return FUNC2 (fontdef->error);

    FUNC5 (cdata, 0, sizeof(HPDF_CharData) * attr->widths_count);
    attr->widths = cdata;

    /* load CharMetrics */
    for (i = 0; i < attr->widths_count; i++, cdata++) {
        const char *s;
        char buf2[HPDF_LIMIT_MAX_NAME_LEN + 1];

        len = HPDF_TMP_BUF_SIZ;
        if ((ret = FUNC12 (stream, buf, &len)) != HPDF_OK)
            return ret;

        /* C default character code. */
        s = FUNC0 (buf, buf2, HPDF_LIMIT_MAX_NAME_LEN + 1);
        if (FUNC8 (buf2, "CX") == 0) {
            /* not suppoted yet. */
            return FUNC7 (fontdef->error,
                    HPDF_INVALID_CHAR_MATRICS_DATA, 0);
        } else
        if (FUNC8 (buf2, "C") == 0) {
            s += 2;

            s = FUNC0 (s, buf2, HPDF_LIMIT_MAX_NAME_LEN + 1);
              FUNC1 (buf2);

            cdata->char_cd = (HPDF_INT16)FUNC1 (buf2);

        } else
            return FUNC7 (fontdef->error,
                    HPDF_INVALID_CHAR_MATRICS_DATA, 0);

        /* WX Character width */
        s = FUNC11 (s, "WX ", 0);
        if (!s)
            return FUNC7 (fontdef->error, HPDF_INVALID_WX_DATA, 0);

        s += 3;

        s = FUNC0 (s, buf2, HPDF_LIMIT_MAX_NAME_LEN + 1);
        if (buf2[0] == 0)
            return FUNC7 (fontdef->error, HPDF_INVALID_WX_DATA, 0);

        cdata->width = (HPDF_INT16)FUNC1 (buf2);

        /* N PostScript language character name */
        s = FUNC11 (s, "N ", 0);
        if (!s)
            return FUNC7 (fontdef->error, HPDF_INVALID_N_DATA, 0);

        s += 2;

        FUNC0 (s, buf2, HPDF_LIMIT_MAX_NAME_LEN + 1);

        cdata->unicode = FUNC4 (buf2);

    }

    return HPDF_OK;
}