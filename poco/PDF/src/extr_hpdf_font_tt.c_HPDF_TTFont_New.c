
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_24__ {int last_char; int first_char; } ;
struct TYPE_23__ {scalar_t__ type; scalar_t__ attr; } ;
struct TYPE_18__ {int obj_class; } ;
struct TYPE_22__ {TYPE_4__* attr; int free_fn; int before_write_fn; int write_fn; TYPE_1__ header; int error; } ;
struct TYPE_21__ {struct TYPE_21__* used; struct TYPE_21__* widths; int xref; TYPE_6__* encoder; TYPE_3__* fontdef; int measure_text_fn; int text_width_fn; int writing_mode; int type; } ;
struct TYPE_20__ {scalar_t__ type; int missing_width; scalar_t__ attr; } ;
struct TYPE_19__ {char* base_font; } ;
typedef int HPDF_Xref ;
typedef TYPE_2__* HPDF_TTFontDefAttr ;
typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_MMgr ;
typedef int HPDF_INT16 ;
typedef TYPE_3__* HPDF_FontDef ;
typedef int HPDF_FontAttr_Rec ;
typedef TYPE_4__* HPDF_FontAttr ;
typedef TYPE_5__* HPDF_Font ;
typedef TYPE_6__* HPDF_Encoder ;
typedef TYPE_5__* HPDF_Dict ;
typedef TYPE_8__* HPDF_BasicEncoderAttr ;
typedef int HPDF_BYTE ;


 int BeforeWrite ;
 scalar_t__ HPDF_Dict_AddName (TYPE_5__*,char*,char*) ;
 scalar_t__ HPDF_Dict_AddNumber (TYPE_5__*,char*,int ) ;
 int HPDF_Dict_Free (TYPE_5__*) ;
 TYPE_5__* HPDF_Dict_New (int ) ;
 scalar_t__ HPDF_ENCODER_TYPE_SINGLE_BYTE ;
 scalar_t__ HPDF_FONTDEF_TYPE_TRUETYPE ;
 int HPDF_FONT_TRUETYPE ;
 void* HPDF_GetMem (int ,int) ;
 int HPDF_INVALID_ENCODER_TYPE ;
 int HPDF_INVALID_FONTDEF_TYPE ;
 int HPDF_MemSet (TYPE_4__*,int ,int) ;
 scalar_t__ HPDF_OK ;
 int HPDF_OSUBCLASS_FONT ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;
 int HPDF_WMODE_HORIZONTAL ;
 scalar_t__ HPDF_Xref_Add (int ,TYPE_5__*) ;
 int MeasureText ;
 int OnFree ;
 int OnWrite ;
 int TextWidth ;

HPDF_Font
HPDF_TTFont_New (HPDF_MMgr mmgr,
                  HPDF_FontDef fontdef,
                  HPDF_Encoder encoder,
                  HPDF_Xref xref)
{
    HPDF_Dict font;
    HPDF_FontAttr attr;
    HPDF_TTFontDefAttr fontdef_attr;
    HPDF_BasicEncoderAttr encoder_attr;
    HPDF_STATUS ret = 0;

    HPDF_PTRACE ((" HPDF_TTFont_New\n"));

    font = HPDF_Dict_New (mmgr);
    if (!font)
        return ((void*)0);

    font->header.obj_class |= HPDF_OSUBCLASS_FONT;


    if (encoder->type != HPDF_ENCODER_TYPE_SINGLE_BYTE) {
        HPDF_SetError(font->error, HPDF_INVALID_ENCODER_TYPE, 0);
        return ((void*)0);
    }

    if (fontdef->type != HPDF_FONTDEF_TYPE_TRUETYPE) {
        HPDF_SetError(font->error, HPDF_INVALID_FONTDEF_TYPE, 0);
        return ((void*)0);
    }

    attr = HPDF_GetMem (mmgr, sizeof(HPDF_FontAttr_Rec));
    if (!attr) {
        HPDF_Dict_Free (font);
        return ((void*)0);
    }

    HPDF_MemSet (attr, 0, sizeof(HPDF_FontAttr_Rec));

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
    attr->widths = HPDF_GetMem (mmgr, sizeof(HPDF_INT16) * 256);
    if (!attr->widths) {
        HPDF_Dict_Free (font);
        return ((void*)0);
    }

    HPDF_MemSet (attr->widths, 0, sizeof(HPDF_INT16) * 256);

    attr->used = HPDF_GetMem (mmgr, sizeof(HPDF_BYTE) * 256);
    if (!attr->used) {
        HPDF_Dict_Free (font);
        return ((void*)0);
    }

    HPDF_MemSet (attr->used, 0, sizeof(HPDF_BYTE) * 256);

    fontdef_attr = (HPDF_TTFontDefAttr)fontdef->attr;

    ret += HPDF_Dict_AddName (font, "Type", "Font");
    ret += HPDF_Dict_AddName (font, "BaseFont", fontdef_attr->base_font);
    ret += HPDF_Dict_AddName (font, "Subtype", "TrueType");

    encoder_attr = (HPDF_BasicEncoderAttr)encoder->attr;

    ret += HPDF_Dict_AddNumber (font, "FirstChar", encoder_attr->first_char);
    ret += HPDF_Dict_AddNumber (font, "LastChar", encoder_attr->last_char);
    if (fontdef->missing_width != 0)
        ret += HPDF_Dict_AddNumber (font, "MissingWidth",
                fontdef->missing_width);

    if (ret != HPDF_OK) {
        HPDF_Dict_Free (font);
        return ((void*)0);
    }

    if (HPDF_Xref_Add (xref, font) != HPDF_OK)
        return ((void*)0);

    return font;
}
