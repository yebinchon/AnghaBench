
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_10__ ;


struct TYPE_34__ {scalar_t__ type; scalar_t__ attr; } ;
struct TYPE_28__ {int obj_class; } ;
struct TYPE_33__ {TYPE_2__* attr; int free_fn; int write_fn; TYPE_1__ header; } ;
struct TYPE_32__ {scalar_t__ type; char* base_font; int missing_width; scalar_t__ attr; } ;
struct TYPE_31__ {int error; } ;
struct TYPE_30__ {int is_base14font; } ;
struct TYPE_29__ {struct TYPE_29__* widths; int xref; TYPE_8__* encoder; TYPE_5__* fontdef; int measure_text_fn; int text_width_fn; int writing_mode; int type; } ;
struct TYPE_27__ {size_t first_char; size_t last_char; int * unicode_map; } ;
typedef int HPDF_Xref ;
typedef int HPDF_UNICODE ;
typedef TYPE_2__ HPDF_UINT16 ;
typedef size_t HPDF_UINT ;
typedef TYPE_3__* HPDF_Type1FontDefAttr ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_4__* HPDF_MMgr ;
typedef int HPDF_INT16 ;
typedef TYPE_5__* HPDF_FontDef ;
typedef int HPDF_FontAttr_Rec ;
typedef TYPE_2__* HPDF_FontAttr ;
typedef TYPE_7__* HPDF_Font ;
typedef TYPE_8__* HPDF_Encoder ;
typedef TYPE_7__* HPDF_Dict ;
typedef TYPE_10__* HPDF_BasicEncoderAttr ;


 scalar_t__ HPDF_Dict_AddName (TYPE_7__*,char*,char*) ;
 scalar_t__ HPDF_Dict_AddNumber (TYPE_7__*,char*,int ) ;
 int HPDF_Dict_Free (TYPE_7__*) ;
 TYPE_7__* HPDF_Dict_New (TYPE_4__*) ;
 scalar_t__ HPDF_ENCODER_TYPE_SINGLE_BYTE ;
 scalar_t__ HPDF_FONTDEF_TYPE_TYPE1 ;
 int HPDF_FONT_TYPE1 ;
 void* HPDF_GetMem (TYPE_4__*,int) ;
 int HPDF_INVALID_ENCODER_TYPE ;
 int HPDF_INVALID_FONTDEF_TYPE ;
 int HPDF_MemSet (TYPE_2__*,int ,int) ;
 scalar_t__ HPDF_OK ;
 int HPDF_OSUBCLASS_FONT ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;
 TYPE_2__ HPDF_Type1FontDef_GetWidth (TYPE_5__*,int ) ;
 int HPDF_WMODE_HORIZONTAL ;
 scalar_t__ HPDF_Xref_Add (int ,TYPE_7__*) ;
 scalar_t__ Type1Font_CreateDescriptor (TYPE_4__*,TYPE_7__*,int ) ;
 int Type1Font_MeasureText ;
 int Type1Font_OnFree ;
 int Type1Font_OnWrite ;
 int Type1Font_TextWidth ;

HPDF_Font
HPDF_Type1Font_New (HPDF_MMgr mmgr,
                     HPDF_FontDef fontdef,
                     HPDF_Encoder encoder,
                     HPDF_Xref xref)
{
    HPDF_Dict font;
    HPDF_FontAttr attr;
    HPDF_Type1FontDefAttr fontdef_attr;
    HPDF_BasicEncoderAttr encoder_attr;
    HPDF_STATUS ret = 0;
    HPDF_UINT i;

    HPDF_PTRACE ((" HPDF_Type1Font_New\n"));


    if (encoder->type != HPDF_ENCODER_TYPE_SINGLE_BYTE) {
        HPDF_SetError(mmgr->error, HPDF_INVALID_ENCODER_TYPE, 0);
        return ((void*)0);
    }

    if (fontdef->type != HPDF_FONTDEF_TYPE_TYPE1) {
        HPDF_SetError(mmgr->error, HPDF_INVALID_FONTDEF_TYPE, 0);
        return ((void*)0);
    }

    font = HPDF_Dict_New (mmgr);
    if (!font)
        return ((void*)0);

    font->header.obj_class |= HPDF_OSUBCLASS_FONT;

    attr = HPDF_GetMem (mmgr, sizeof(HPDF_FontAttr_Rec));
    if (!attr) {
        HPDF_Dict_Free (font);
        return ((void*)0);
    }

    font->header.obj_class |= HPDF_OSUBCLASS_FONT;
    font->write_fn = Type1Font_OnWrite;
    font->free_fn = Type1Font_OnFree;

    HPDF_MemSet (attr, 0, sizeof(HPDF_FontAttr_Rec));

    font->attr = attr;
    attr->type = HPDF_FONT_TYPE1;
    attr->writing_mode = HPDF_WMODE_HORIZONTAL;
    attr->text_width_fn = Type1Font_TextWidth;
    attr->measure_text_fn = Type1Font_MeasureText;
    attr->fontdef = fontdef;
    attr->encoder = encoder;
    attr->xref = xref;




    attr->widths = HPDF_GetMem (mmgr, sizeof(HPDF_INT16) * 256);
    if (!attr->widths) {
        HPDF_Dict_Free (font);
        return ((void*)0);
    }

    encoder_attr = (HPDF_BasicEncoderAttr)encoder->attr;

    HPDF_MemSet (attr->widths, 0, sizeof(HPDF_INT16) * 256);
    for (i = encoder_attr->first_char; i <= encoder_attr->last_char; i++) {
        HPDF_UNICODE u = encoder_attr->unicode_map[i];

        HPDF_UINT16 w = HPDF_Type1FontDef_GetWidth (fontdef, u);
        attr->widths[i] = w;
    }

    fontdef_attr = (HPDF_Type1FontDefAttr)fontdef->attr;

    ret += HPDF_Dict_AddName (font, "Type", "Font");
    ret += HPDF_Dict_AddName (font, "BaseFont", fontdef->base_font);
    ret += HPDF_Dict_AddName (font, "Subtype", "Type1");

    if (!fontdef_attr->is_base14font) {
        if (fontdef->missing_width != 0)
            ret += HPDF_Dict_AddNumber (font, "MissingWidth",
                    fontdef->missing_width);

        ret += Type1Font_CreateDescriptor (mmgr, font, xref);
    }

    if (ret != HPDF_OK) {
        HPDF_Dict_Free (font);
        return ((void*)0);
    }

    if (HPDF_Xref_Add (xref, font) != HPDF_OK)
        return ((void*)0);

    return font;
}
