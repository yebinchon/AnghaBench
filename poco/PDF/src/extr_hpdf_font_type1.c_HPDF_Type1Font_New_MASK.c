#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_8__ ;
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_10__ ;

/* Type definitions */
struct TYPE_34__ {scalar_t__ type; scalar_t__ attr; } ;
struct TYPE_28__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_33__ {TYPE_2__* attr; int /*<<< orphan*/  free_fn; int /*<<< orphan*/  write_fn; TYPE_1__ header; } ;
struct TYPE_32__ {scalar_t__ type; char* base_font; int /*<<< orphan*/  missing_width; scalar_t__ attr; } ;
struct TYPE_31__ {int /*<<< orphan*/  error; } ;
struct TYPE_30__ {int /*<<< orphan*/  is_base14font; } ;
struct TYPE_29__ {struct TYPE_29__* widths; int /*<<< orphan*/  xref; TYPE_8__* encoder; TYPE_5__* fontdef; int /*<<< orphan*/  measure_text_fn; int /*<<< orphan*/  text_width_fn; int /*<<< orphan*/  writing_mode; int /*<<< orphan*/  type; } ;
struct TYPE_27__ {size_t first_char; size_t last_char; int /*<<< orphan*/ * unicode_map; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  int /*<<< orphan*/  HPDF_UNICODE ;
typedef  TYPE_2__ HPDF_UINT16 ;
typedef  size_t HPDF_UINT ;
typedef  TYPE_3__* HPDF_Type1FontDefAttr ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_4__* HPDF_MMgr ;
typedef  int /*<<< orphan*/  HPDF_INT16 ;
typedef  TYPE_5__* HPDF_FontDef ;
typedef  int /*<<< orphan*/  HPDF_FontAttr_Rec ;
typedef  TYPE_2__* HPDF_FontAttr ;
typedef  TYPE_7__* HPDF_Font ;
typedef  TYPE_8__* HPDF_Encoder ;
typedef  TYPE_7__* HPDF_Dict ;
typedef  TYPE_10__* HPDF_BasicEncoderAttr ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_7__*,char*,char*) ; 
 scalar_t__ FUNC1 (TYPE_7__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 TYPE_7__* FUNC3 (TYPE_4__*) ; 
 scalar_t__ HPDF_ENCODER_TYPE_SINGLE_BYTE ; 
 scalar_t__ HPDF_FONTDEF_TYPE_TYPE1 ; 
 int /*<<< orphan*/  HPDF_FONT_TYPE1 ; 
 void* FUNC4 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  HPDF_INVALID_ENCODER_TYPE ; 
 int /*<<< orphan*/  HPDF_INVALID_FONTDEF_TYPE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  HPDF_OSUBCLASS_FONT ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC8 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_WMODE_HORIZONTAL ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 scalar_t__ FUNC10 (TYPE_4__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Type1Font_MeasureText ; 
 int /*<<< orphan*/  Type1Font_OnFree ; 
 int /*<<< orphan*/  Type1Font_OnWrite ; 
 int /*<<< orphan*/  Type1Font_TextWidth ; 

HPDF_Font
FUNC11  (HPDF_MMgr        mmgr,
                     HPDF_FontDef     fontdef,
                     HPDF_Encoder     encoder,
                     HPDF_Xref        xref)
{
    HPDF_Dict font;
    HPDF_FontAttr attr;
    HPDF_Type1FontDefAttr fontdef_attr;
    HPDF_BasicEncoderAttr encoder_attr;
    HPDF_STATUS ret = 0;
    HPDF_UINT i;

    FUNC6 ((" HPDF_Type1Font_New\n"));

    /* check whether the fontdef object and the encoder object is valid. */
    if (encoder->type != HPDF_ENCODER_TYPE_SINGLE_BYTE) {
        FUNC7(mmgr->error, HPDF_INVALID_ENCODER_TYPE, 0);
        return NULL;
    }

    if (fontdef->type != HPDF_FONTDEF_TYPE_TYPE1) {
        FUNC7(mmgr->error, HPDF_INVALID_FONTDEF_TYPE, 0);
        return NULL;
    }

    font = FUNC3 (mmgr);
    if (!font)
        return NULL;

    font->header.obj_class |= HPDF_OSUBCLASS_FONT;

    attr = FUNC4 (mmgr, sizeof(HPDF_FontAttr_Rec));
    if (!attr) {
        FUNC2 (font);
        return NULL;
    }

    font->header.obj_class |= HPDF_OSUBCLASS_FONT;
    font->write_fn = Type1Font_OnWrite;
    font->free_fn = Type1Font_OnFree;

    FUNC5 (attr, 0, sizeof(HPDF_FontAttr_Rec));

    font->attr = attr;
    attr->type = HPDF_FONT_TYPE1;
    attr->writing_mode = HPDF_WMODE_HORIZONTAL;
    attr->text_width_fn = Type1Font_TextWidth;
    attr->measure_text_fn = Type1Font_MeasureText;
    attr->fontdef = fontdef;
    attr->encoder = encoder;
    attr->xref = xref;

    /* singlebyte-font has a widths-array which is an array of 256 signed
     * short integer.
     */
    attr->widths = FUNC4 (mmgr, sizeof(HPDF_INT16) * 256);
    if (!attr->widths) {
        FUNC2 (font);
        return NULL;
    }

    encoder_attr = (HPDF_BasicEncoderAttr)encoder->attr;

    FUNC5 (attr->widths, 0, sizeof(HPDF_INT16) * 256);
    for (i = encoder_attr->first_char; i <= encoder_attr->last_char; i++) {
        HPDF_UNICODE u = encoder_attr->unicode_map[i];

        HPDF_UINT16 w = FUNC8 (fontdef, u);
        attr->widths[i] = w;
    }

    fontdef_attr = (HPDF_Type1FontDefAttr)fontdef->attr;

    ret += FUNC0 (font, "Type", "Font");
    ret += FUNC0 (font, "BaseFont", fontdef->base_font);
    ret += FUNC0 (font, "Subtype", "Type1");

    if (!fontdef_attr->is_base14font) {
        if (fontdef->missing_width != 0)
            ret += FUNC1 (font, "MissingWidth",
                    fontdef->missing_width);

        ret += FUNC10 (mmgr, font, xref);
    }

    if (ret != HPDF_OK) {
        FUNC2 (font);
        return NULL;
    }

    if (FUNC9 (xref, font) != HPDF_OK)
        return NULL;

    return font;
}