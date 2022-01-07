
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_26__ {int ordering; int writing_mode; } ;
struct TYPE_25__ {scalar_t__ type; char* name; scalar_t__ attr; } ;
struct TYPE_21__ {int obj_class; } ;
struct TYPE_24__ {TYPE_3__* attr; int free_fn; int * write_fn; TYPE_1__ header; int error; } ;
struct TYPE_23__ {int descendant_font; int type; void* cmap_stream; int xref; TYPE_5__* encoder; TYPE_2__* fontdef; int measure_text_fn; int text_width_fn; int writing_mode; } ;
struct TYPE_22__ {scalar_t__ type; char* base_font; } ;
typedef int HPDF_Xref ;
typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_MMgr ;
typedef TYPE_2__* HPDF_FontDef ;
typedef int HPDF_FontAttr_Rec ;
typedef TYPE_3__* HPDF_FontAttr ;
typedef TYPE_4__* HPDF_Font ;
typedef TYPE_5__* HPDF_Encoder ;
typedef TYPE_4__* HPDF_Dict ;
typedef TYPE_7__* HPDF_CMapEncoderAttr ;
typedef void* HPDF_Array ;


 int CIDFontType0_New (TYPE_4__*,int ) ;
 int CIDFontType2_New (TYPE_4__*,int ) ;
 void* CreateCMap (TYPE_5__*,int ) ;
 scalar_t__ HPDF_Array_Add (void*,int ) ;
 void* HPDF_Array_New (int ) ;
 scalar_t__ HPDF_Dict_Add (TYPE_4__*,char*,void*) ;
 scalar_t__ HPDF_Dict_AddName (TYPE_4__*,char*,char*) ;
 int HPDF_Dict_Free (TYPE_4__*) ;
 TYPE_4__* HPDF_Dict_New (int ) ;
 scalar_t__ HPDF_ENCODER_TYPE_DOUBLE_BYTE ;
 scalar_t__ HPDF_FONTDEF_TYPE_CID ;
 scalar_t__ HPDF_FONTDEF_TYPE_TRUETYPE ;
 int HPDF_FONT_TYPE0_CID ;
 int HPDF_FONT_TYPE0_TT ;
 TYPE_3__* HPDF_GetMem (int ,int) ;
 int HPDF_INVALID_ENCODER_TYPE ;
 int HPDF_INVALID_FONTDEF_TYPE ;
 int HPDF_MemSet (TYPE_3__*,int ,int) ;
 scalar_t__ HPDF_OK ;
 int HPDF_OSUBCLASS_FONT ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;
 scalar_t__ HPDF_StrCmp (int ,char*) ;
 scalar_t__ HPDF_Xref_Add (int ,TYPE_4__*) ;
 int MeasureText ;
 int OnFree_Func ;
 int TextWidth ;

HPDF_Font
HPDF_Type0Font_New (HPDF_MMgr mmgr,
                     HPDF_FontDef fontdef,
                     HPDF_Encoder encoder,
                     HPDF_Xref xref)
{
    HPDF_Dict font;
    HPDF_FontAttr attr;
    HPDF_CMapEncoderAttr encoder_attr;
    HPDF_STATUS ret = 0;
    HPDF_Array descendant_fonts;

    HPDF_PTRACE ((" HPDF_Type0Font_New\n"));

    font = HPDF_Dict_New (mmgr);
    if (!font)
        return ((void*)0);

    font->header.obj_class |= HPDF_OSUBCLASS_FONT;


    if (encoder->type != HPDF_ENCODER_TYPE_DOUBLE_BYTE) {
        HPDF_SetError(font->error, HPDF_INVALID_ENCODER_TYPE, 0);
        return ((void*)0);
    }

    if (fontdef->type != HPDF_FONTDEF_TYPE_CID &&
        fontdef->type != HPDF_FONTDEF_TYPE_TRUETYPE) {
        HPDF_SetError(font->error, HPDF_INVALID_FONTDEF_TYPE, 0);
        return ((void*)0);
    }

    attr = HPDF_GetMem (mmgr, sizeof(HPDF_FontAttr_Rec));
    if (!attr) {
        HPDF_Dict_Free (font);
        return ((void*)0);
    }

    font->header.obj_class |= HPDF_OSUBCLASS_FONT;
    font->write_fn = ((void*)0);
    font->free_fn = OnFree_Func;
    font->attr = attr;

    encoder_attr = (HPDF_CMapEncoderAttr)encoder->attr;

    HPDF_MemSet (attr, 0, sizeof(HPDF_FontAttr_Rec));

    attr->writing_mode = encoder_attr->writing_mode;
    attr->text_width_fn = TextWidth;
    attr->measure_text_fn = MeasureText;
    attr->fontdef = fontdef;
    attr->encoder = encoder;
    attr->xref = xref;

    if (HPDF_Xref_Add (xref, font) != HPDF_OK)
        return ((void*)0);

    ret += HPDF_Dict_AddName (font, "Type", "Font");
    ret += HPDF_Dict_AddName (font, "BaseFont", fontdef->base_font);
    ret += HPDF_Dict_AddName (font, "Subtype", "Type0");

    if (fontdef->type == HPDF_FONTDEF_TYPE_CID) {
        ret += HPDF_Dict_AddName (font, "Encoding", encoder->name);
    } else {
        if (HPDF_StrCmp(encoder_attr->ordering, "Identity-H") == 0) {
     ret += HPDF_Dict_AddName (font, "Encoding", "Identity-H");
     attr->cmap_stream = CreateCMap (encoder, xref);

     if (attr->cmap_stream) {
         ret += HPDF_Dict_Add (font, "ToUnicode", attr->cmap_stream);
     } else
         return ((void*)0);
 } else {
            attr->cmap_stream = CreateCMap (encoder, xref);

     if (attr->cmap_stream) {
         ret += HPDF_Dict_Add (font, "Encoding", attr->cmap_stream);
     } else
       return ((void*)0);
 }
    }

    if (ret != HPDF_OK)
        return ((void*)0);

    descendant_fonts = HPDF_Array_New (mmgr);
    if (!descendant_fonts)
        return ((void*)0);

    if (HPDF_Dict_Add (font, "DescendantFonts", descendant_fonts) != HPDF_OK)
        return ((void*)0);

    if (fontdef->type == HPDF_FONTDEF_TYPE_CID) {
        attr->descendant_font = CIDFontType0_New (font, xref);
        attr->type = HPDF_FONT_TYPE0_CID;
    } else {
        attr->descendant_font = CIDFontType2_New (font, xref);
        attr->type = HPDF_FONT_TYPE0_TT;
    }

    if (!attr->descendant_font)
        return ((void*)0);
    else
        if (HPDF_Array_Add (descendant_fonts, attr->descendant_font) !=
                HPDF_OK)
            return ((void*)0);

    return font;
}
