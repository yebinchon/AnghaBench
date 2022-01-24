#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/  last_char; int /*<<< orphan*/  first_char; } ;
struct TYPE_23__ {scalar_t__ type; scalar_t__ attr; } ;
struct TYPE_18__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_22__ {TYPE_4__* attr; int /*<<< orphan*/  free_fn; int /*<<< orphan*/  before_write_fn; int /*<<< orphan*/  write_fn; TYPE_1__ header; int /*<<< orphan*/  error; } ;
struct TYPE_21__ {struct TYPE_21__* used; struct TYPE_21__* widths; int /*<<< orphan*/  xref; TYPE_6__* encoder; TYPE_3__* fontdef; int /*<<< orphan*/  measure_text_fn; int /*<<< orphan*/  text_width_fn; int /*<<< orphan*/  writing_mode; int /*<<< orphan*/  type; } ;
struct TYPE_20__ {scalar_t__ type; int /*<<< orphan*/  missing_width; scalar_t__ attr; } ;
struct TYPE_19__ {char* base_font; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  TYPE_2__* HPDF_TTFontDefAttr ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;
typedef  int /*<<< orphan*/  HPDF_INT16 ;
typedef  TYPE_3__* HPDF_FontDef ;
typedef  int /*<<< orphan*/  HPDF_FontAttr_Rec ;
typedef  TYPE_4__* HPDF_FontAttr ;
typedef  TYPE_5__* HPDF_Font ;
typedef  TYPE_6__* HPDF_Encoder ;
typedef  TYPE_5__* HPDF_Dict ;
typedef  TYPE_8__* HPDF_BasicEncoderAttr ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  BeforeWrite ; 
 scalar_t__ FUNC0 (TYPE_5__*,char*,char*) ; 
 scalar_t__ FUNC1 (TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_ENCODER_TYPE_SINGLE_BYTE ; 
 scalar_t__ HPDF_FONTDEF_TYPE_TRUETYPE ; 
 int /*<<< orphan*/  HPDF_FONT_TRUETYPE ; 
 void* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HPDF_INVALID_ENCODER_TYPE ; 
 int /*<<< orphan*/  HPDF_INVALID_FONTDEF_TYPE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  HPDF_OSUBCLASS_FONT ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_WMODE_HORIZONTAL ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  MeasureText ; 
 int /*<<< orphan*/  OnFree ; 
 int /*<<< orphan*/  OnWrite ; 
 int /*<<< orphan*/  TextWidth ; 

HPDF_Font
FUNC9  (HPDF_MMgr        mmgr,
                  HPDF_FontDef     fontdef,
                  HPDF_Encoder     encoder,
                  HPDF_Xref        xref)
{
    HPDF_Dict font;
    HPDF_FontAttr attr;
    HPDF_TTFontDefAttr fontdef_attr;
    HPDF_BasicEncoderAttr encoder_attr;
    HPDF_STATUS ret = 0;

    FUNC6 ((" HPDF_TTFont_New\n"));

    font = FUNC3 (mmgr);
    if (!font)
        return NULL;

    font->header.obj_class |= HPDF_OSUBCLASS_FONT;

    /* check whether the fontdef object and the encoder object is valid. */
    if (encoder->type != HPDF_ENCODER_TYPE_SINGLE_BYTE) {
        FUNC7(font->error, HPDF_INVALID_ENCODER_TYPE, 0);
        return NULL;
    }

    if (fontdef->type != HPDF_FONTDEF_TYPE_TRUETYPE) {
        FUNC7(font->error, HPDF_INVALID_FONTDEF_TYPE, 0);
        return NULL;
    }

    attr = FUNC4 (mmgr, sizeof(HPDF_FontAttr_Rec));
    if (!attr) {
        FUNC2 (font);
        return NULL;
    }

    FUNC5 (attr, 0, sizeof(HPDF_FontAttr_Rec));

    font->header.obj_class |= HPDF_OSUBCLASS_FONT;
    font->write_fn = OnWrite;
    font->before_write_fn = BeforeWrite;
    font->free_fn = OnFree;
    font->attr = attr;

    attr->type = HPDF_FONT_TRUETYPE;
    attr->writing_mode = HPDF_WMODE_HORIZONTAL;
    attr->text_width_fn = TextWidth;
    attr->measure_text_fn = MeasureText;
    attr->fontdef = fontdef;
    attr->encoder = encoder;
    attr->xref = xref;

    /* singlebyte-font has a widths-array which is an array of 256 signed
     * short integer.
     * in the case of type1-font, widths-array for all letters is made in
     * constructer. but in the case of true-type-font, the array is
     * initialized at 0, and set when the corresponding character was used
     * for the first time.
     */
    attr->widths = FUNC4 (mmgr, sizeof(HPDF_INT16) * 256);
    if (!attr->widths) {
        FUNC2 (font);
        return NULL;
    }

    FUNC5 (attr->widths, 0, sizeof(HPDF_INT16) * 256);

    attr->used = FUNC4 (mmgr, sizeof(HPDF_BYTE) * 256);
    if (!attr->used) {
        FUNC2 (font);
        return NULL;
    }

    FUNC5 (attr->used, 0, sizeof(HPDF_BYTE) * 256);

    fontdef_attr = (HPDF_TTFontDefAttr)fontdef->attr;

    ret += FUNC0 (font, "Type", "Font");
    ret += FUNC0 (font, "BaseFont", fontdef_attr->base_font);
    ret += FUNC0 (font, "Subtype", "TrueType");

    encoder_attr = (HPDF_BasicEncoderAttr)encoder->attr;

    ret += FUNC1 (font, "FirstChar", encoder_attr->first_char);
    ret += FUNC1 (font, "LastChar", encoder_attr->last_char);
    if (fontdef->missing_width != 0)
        ret += FUNC1 (font, "MissingWidth",
                fontdef->missing_width);

    if (ret != HPDF_OK) {
        FUNC2 (font);
        return NULL;
    }

    if (FUNC8 (xref, font) != HPDF_OK)
        return NULL;

    return font;
}