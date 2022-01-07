
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_23__ {int error; int mmgr; int filter; int stream; int attr; } ;
struct TYPE_22__ {TYPE_4__* fontdef; TYPE_6__* descendant_font; int xref; TYPE_2__* cmap_stream; TYPE_1__* map_stream; } ;
struct TYPE_21__ {TYPE_6__* descriptor; int x_height; int stemv; int italic_angle; int font_bbox; int flags; int descent; int ascent; int attr; } ;
struct TYPE_20__ {char* base_font; int length1; scalar_t__ embedding; } ;
struct TYPE_19__ {int filter; } ;
struct TYPE_18__ {int filter; } ;
typedef TYPE_3__* HPDF_TTFontDefAttr ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_4__* HPDF_FontDef ;
typedef TYPE_5__* HPDF_FontAttr ;
typedef TYPE_6__* HPDF_Dict ;
typedef TYPE_6__* HPDF_Array ;


 TYPE_6__* HPDF_Box_Array_New (int ,int ) ;
 TYPE_6__* HPDF_DictStream_New (int ,int ) ;
 scalar_t__ HPDF_Dict_Add (TYPE_6__*,char*,TYPE_6__*) ;
 scalar_t__ HPDF_Dict_AddName (TYPE_6__*,char*,char*) ;
 scalar_t__ HPDF_Dict_AddNumber (TYPE_6__*,char*,int ) ;
 TYPE_6__* HPDF_Dict_New (int ) ;
 scalar_t__ HPDF_Error_GetCode (int ) ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_TTFontDef_SaveFontData (TYPE_4__*,int ) ;
 scalar_t__ HPDF_Xref_Add (int ,TYPE_6__*) ;

__attribute__((used)) static HPDF_STATUS
CIDFontType2_BeforeWrite_Func (HPDF_Dict obj)
{
    HPDF_FontAttr font_attr = (HPDF_FontAttr)obj->attr;
    HPDF_FontDef def = font_attr->fontdef;
    HPDF_TTFontDefAttr def_attr = (HPDF_TTFontDefAttr)def->attr;
    HPDF_STATUS ret = 0;

    HPDF_PTRACE ((" CIDFontType2_BeforeWrite_Func\n"));

    if (font_attr->map_stream)
        font_attr->map_stream->filter = obj->filter;

    if (font_attr->cmap_stream)
        font_attr->cmap_stream->filter = obj->filter;

    if (!font_attr->fontdef->descriptor) {
        HPDF_Dict descriptor = HPDF_Dict_New (obj->mmgr);
        HPDF_Array array;

        if (!descriptor)
            return HPDF_Error_GetCode (obj->error);

        if (def_attr->embedding) {
            HPDF_Dict font_data = HPDF_DictStream_New (obj->mmgr,
                    font_attr->xref);

            if (!font_data)
                return HPDF_Error_GetCode (obj->error);

            if (HPDF_TTFontDef_SaveFontData (font_attr->fontdef,
                font_data->stream) != HPDF_OK)
                return HPDF_Error_GetCode (obj->error);

            ret += HPDF_Dict_Add (descriptor, "FontFile2", font_data);
            ret += HPDF_Dict_AddNumber (font_data, "Length1",
                    def_attr->length1);
            ret += HPDF_Dict_AddNumber (font_data, "Length2", 0);
            ret += HPDF_Dict_AddNumber (font_data, "Length3", 0);

            font_data->filter = obj->filter;

            if (ret != HPDF_OK)
                return HPDF_Error_GetCode (obj->error);
        }

        ret += HPDF_Xref_Add (font_attr->xref, descriptor);
        ret += HPDF_Dict_AddName (descriptor, "Type", "FontDescriptor");
        ret += HPDF_Dict_AddNumber (descriptor, "Ascent", def->ascent);
        ret += HPDF_Dict_AddNumber (descriptor, "Descent", def->descent);
        ret += HPDF_Dict_AddNumber (descriptor, "Flags", def->flags);

        array = HPDF_Box_Array_New (obj->mmgr, def->font_bbox);
        ret += HPDF_Dict_Add (descriptor, "FontBBox", array);

        ret += HPDF_Dict_AddName (descriptor, "FontName", def_attr->base_font);
        ret += HPDF_Dict_AddNumber (descriptor, "ItalicAngle",
                def->italic_angle);
        ret += HPDF_Dict_AddNumber (descriptor, "StemV", def->stemv);
        ret += HPDF_Dict_AddNumber (descriptor, "XHeight", def->x_height);

        if (ret != HPDF_OK)
            return HPDF_Error_GetCode (obj->error);

        font_attr->fontdef->descriptor = descriptor;
    }

    if ((ret = HPDF_Dict_AddName (obj, "BaseFont",
                def_attr->base_font)) != HPDF_OK)
        return ret;

    if ((ret = HPDF_Dict_AddName (font_attr->descendant_font, "BaseFont",
                def_attr->base_font)) != HPDF_OK)
        return ret;

    return HPDF_Dict_Add (font_attr->descendant_font, "FontDescriptor",
                font_attr->fontdef->descriptor);
}
