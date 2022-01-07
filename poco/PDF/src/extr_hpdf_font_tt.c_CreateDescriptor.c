
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_20__ {int error; int filter; int stream; int mmgr; int attr; } ;
struct TYPE_19__ {TYPE_2__* fontdef; int xref; } ;
struct TYPE_18__ {TYPE_4__* descriptor; int x_height; int stemv; int italic_angle; int font_bbox; int flags; int cap_height; int descent; int ascent; int attr; } ;
struct TYPE_17__ {char* base_font; char* char_set; int length1; scalar_t__ embedding; } ;
typedef TYPE_1__* HPDF_TTFontDefAttr ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_2__* HPDF_FontDef ;
typedef TYPE_3__* HPDF_FontAttr ;
typedef TYPE_4__* HPDF_Font ;
typedef TYPE_4__* HPDF_Dict ;
typedef TYPE_4__* HPDF_Array ;


 TYPE_4__* HPDF_Box_Array_New (int ,int ) ;
 TYPE_4__* HPDF_DictStream_New (int ,int ) ;
 scalar_t__ HPDF_Dict_Add (TYPE_4__*,char*,TYPE_4__*) ;
 scalar_t__ HPDF_Dict_AddName (TYPE_4__*,char*,char*) ;
 scalar_t__ HPDF_Dict_AddNumber (TYPE_4__*,char*,int ) ;
 TYPE_4__* HPDF_Dict_New (int ) ;
 scalar_t__ HPDF_Error_GetCode (int ) ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_TTFontDef_SaveFontData (TYPE_2__*,int ) ;
 scalar_t__ HPDF_Xref_Add (int ,TYPE_4__*) ;

__attribute__((used)) static HPDF_STATUS
CreateDescriptor (HPDF_Font font)
{
    HPDF_FontAttr font_attr = (HPDF_FontAttr)font->attr;
    HPDF_FontDef def = font_attr->fontdef;
    HPDF_TTFontDefAttr def_attr = (HPDF_TTFontDefAttr)def->attr;

    HPDF_PTRACE ((" HPDF_TTFont_CreateDescriptor\n"));

    if (!font_attr->fontdef->descriptor) {
        HPDF_Dict descriptor = HPDF_Dict_New (font->mmgr);
        HPDF_STATUS ret = 0;
        HPDF_Array array;

        if (!descriptor)
            return HPDF_Error_GetCode (font->error);

        ret += HPDF_Xref_Add (font_attr->xref, descriptor);
        ret += HPDF_Dict_AddName (descriptor, "Type", "FontDescriptor");
        ret += HPDF_Dict_AddNumber (descriptor, "Ascent", def->ascent);
        ret += HPDF_Dict_AddNumber (descriptor, "Descent", def->descent);
        ret += HPDF_Dict_AddNumber (descriptor, "CapHeight", def->cap_height);
        ret += HPDF_Dict_AddNumber (descriptor, "Flags", def->flags);

        array = HPDF_Box_Array_New (font->mmgr, def->font_bbox);
        ret += HPDF_Dict_Add (descriptor, "FontBBox", array);

        ret += HPDF_Dict_AddName (descriptor, "FontName", def_attr->base_font);
        ret += HPDF_Dict_AddNumber (descriptor, "ItalicAngle",
                def->italic_angle);
        ret += HPDF_Dict_AddNumber (descriptor, "StemV", def->stemv);
        ret += HPDF_Dict_AddNumber (descriptor, "XHeight", def->x_height);

        if (def_attr->char_set)
            ret += HPDF_Dict_AddName (descriptor, "CharSet",
                        def_attr->char_set);

        if (ret != HPDF_OK)
            return HPDF_Error_GetCode (font->error);

        if (def_attr->embedding) {
            HPDF_Dict font_data = HPDF_DictStream_New (font->mmgr,
                    font_attr->xref);

            if (!font_data)
                return HPDF_Error_GetCode (font->error);

            if (HPDF_TTFontDef_SaveFontData (font_attr->fontdef,
                font_data->stream) != HPDF_OK)
                return HPDF_Error_GetCode (font->error);

            ret += HPDF_Dict_Add (descriptor, "FontFile2", font_data);
            ret += HPDF_Dict_AddNumber (font_data, "Length1",
                    def_attr->length1);
            ret += HPDF_Dict_AddNumber (font_data, "Length2", 0);
            ret += HPDF_Dict_AddNumber (font_data, "Length3", 0);

            font_data->filter = font->filter;
        }

        if (ret != HPDF_OK)
            return HPDF_Error_GetCode (font->error);

        font_attr->fontdef->descriptor = descriptor;
    }

    return HPDF_Dict_Add (font, "FontDescriptor",
                font_attr->fontdef->descriptor);
}
