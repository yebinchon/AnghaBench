#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {int /*<<< orphan*/  ordering; int /*<<< orphan*/  writing_mode; } ;
struct TYPE_25__ {scalar_t__ type; char* name; scalar_t__ attr; } ;
struct TYPE_21__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_24__ {TYPE_3__* attr; int /*<<< orphan*/  free_fn; int /*<<< orphan*/ * write_fn; TYPE_1__ header; int /*<<< orphan*/  error; } ;
struct TYPE_23__ {int /*<<< orphan*/  descendant_font; int /*<<< orphan*/  type; void* cmap_stream; int /*<<< orphan*/  xref; TYPE_5__* encoder; TYPE_2__* fontdef; int /*<<< orphan*/  measure_text_fn; int /*<<< orphan*/  text_width_fn; int /*<<< orphan*/  writing_mode; } ;
struct TYPE_22__ {scalar_t__ type; char* base_font; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;
typedef  TYPE_2__* HPDF_FontDef ;
typedef  int /*<<< orphan*/  HPDF_FontAttr_Rec ;
typedef  TYPE_3__* HPDF_FontAttr ;
typedef  TYPE_4__* HPDF_Font ;
typedef  TYPE_5__* HPDF_Encoder ;
typedef  TYPE_4__* HPDF_Dict ;
typedef  TYPE_7__* HPDF_CMapEncoderAttr ;
typedef  void* HPDF_Array ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_4__*,char*,void*) ; 
 scalar_t__ FUNC6 (TYPE_4__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_ENCODER_TYPE_DOUBLE_BYTE ; 
 scalar_t__ HPDF_FONTDEF_TYPE_CID ; 
 scalar_t__ HPDF_FONTDEF_TYPE_TRUETYPE ; 
 int /*<<< orphan*/  HPDF_FONT_TYPE0_CID ; 
 int /*<<< orphan*/  HPDF_FONT_TYPE0_TT ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HPDF_INVALID_ENCODER_TYPE ; 
 int /*<<< orphan*/  HPDF_INVALID_FONTDEF_TYPE ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  HPDF_OSUBCLASS_FONT ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  MeasureText ; 
 int /*<<< orphan*/  OnFree_Func ; 
 int /*<<< orphan*/  TextWidth ; 

HPDF_Font
FUNC15  (HPDF_MMgr        mmgr,
                     HPDF_FontDef     fontdef,
                     HPDF_Encoder     encoder,
                     HPDF_Xref        xref)
{
    HPDF_Dict font;
    HPDF_FontAttr attr;
    HPDF_CMapEncoderAttr encoder_attr;
    HPDF_STATUS ret = 0;
    HPDF_Array descendant_fonts;

    FUNC11 ((" HPDF_Type0Font_New\n"));

    font = FUNC8 (mmgr);
    if (!font)
        return NULL;

    font->header.obj_class |= HPDF_OSUBCLASS_FONT;

    /* check whether the fontdef object and the encoder object is valid. */
    if (encoder->type != HPDF_ENCODER_TYPE_DOUBLE_BYTE) {
        FUNC12(font->error, HPDF_INVALID_ENCODER_TYPE, 0);
        return NULL;
    }

    if (fontdef->type != HPDF_FONTDEF_TYPE_CID &&
        fontdef->type != HPDF_FONTDEF_TYPE_TRUETYPE) {
        FUNC12(font->error, HPDF_INVALID_FONTDEF_TYPE, 0);
        return NULL;
    }

    attr = FUNC9 (mmgr, sizeof(HPDF_FontAttr_Rec));
    if (!attr) {
        FUNC7 (font);
        return NULL;
    }

    font->header.obj_class |= HPDF_OSUBCLASS_FONT;
    font->write_fn = NULL;
    font->free_fn = OnFree_Func;
    font->attr = attr;

    encoder_attr = (HPDF_CMapEncoderAttr)encoder->attr;

    FUNC10 (attr, 0, sizeof(HPDF_FontAttr_Rec));

    attr->writing_mode = encoder_attr->writing_mode;
    attr->text_width_fn = TextWidth;
    attr->measure_text_fn = MeasureText;
    attr->fontdef = fontdef;
    attr->encoder = encoder;
    attr->xref = xref;

    if (FUNC14 (xref, font) != HPDF_OK)
        return NULL;

    ret += FUNC6 (font, "Type", "Font");
    ret += FUNC6 (font, "BaseFont", fontdef->base_font);
    ret += FUNC6 (font, "Subtype", "Type0");

    if (fontdef->type == HPDF_FONTDEF_TYPE_CID) {
        ret += FUNC6 (font, "Encoding", encoder->name);
    } else {
        /*
	 * Handle the Unicode encoding, see hpdf_encoding_utf.c For some
	 * reason, xpdf-based readers cannot deal with our cmap but work
	 * fine when using the predefined "Identity-H"
	 * encoding. However, text selection does not work, unless we
	 * add a ToUnicode cmap. This CMap should also be "Identity",
	 * but that does not work -- specifying our cmap as a stream however
	 * does work. Who can understand that ?
	 */
        if (FUNC13(encoder_attr->ordering, "Identity-H") == 0) {
	    ret += FUNC6 (font, "Encoding", "Identity-H");
	    attr->cmap_stream = FUNC2 (encoder, xref);

	    if (attr->cmap_stream) {
	        ret += FUNC5 (font, "ToUnicode", attr->cmap_stream);
	    } else
	        return NULL;
	} else {
            attr->cmap_stream = FUNC2 (encoder, xref);

	    if (attr->cmap_stream) {
	        ret += FUNC5 (font, "Encoding", attr->cmap_stream);
	    } else
	      return NULL;
	}
    }

    if (ret != HPDF_OK)
        return NULL;

    descendant_fonts = FUNC4 (mmgr);
    if (!descendant_fonts)
        return NULL;

    if (FUNC5 (font, "DescendantFonts", descendant_fonts) != HPDF_OK)
        return NULL;

    if (fontdef->type == HPDF_FONTDEF_TYPE_CID) {
        attr->descendant_font = FUNC0 (font, xref);
        attr->type = HPDF_FONT_TYPE0_CID;
    } else {
        attr->descendant_font = FUNC1 (font, xref);
        attr->type = HPDF_FONT_TYPE0_TT;
    }

    if (!attr->descendant_font)
        return NULL;
    else
        if (FUNC3 (descendant_fonts, attr->descendant_font) !=
                HPDF_OK)
            return NULL;

    return font;
}