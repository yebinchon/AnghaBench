
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_12__ ;


struct TYPE_32__ {scalar_t__* DW2; TYPE_12__* widths; int DW; } ;
struct TYPE_31__ {scalar_t__ cid; scalar_t__ width; } ;
struct TYPE_30__ {int suppliment; int ordering; int registry; } ;
struct TYPE_29__ {int attr; } ;
struct TYPE_28__ {int mmgr; int attr; } ;
struct TYPE_27__ {TYPE_4__* encoder; TYPE_1__* fontdef; } ;
struct TYPE_26__ {char* base_font; int stemv; int italic_angle; int font_bbox; int flags; int missing_width; int cap_height; int descent; int ascent; int attr; } ;
struct TYPE_25__ {scalar_t__ count; } ;
typedef int HPDF_Xref ;
typedef scalar_t__ HPDF_UINT16 ;
typedef scalar_t__ HPDF_UINT ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_1__* HPDF_FontDef ;
typedef TYPE_2__* HPDF_FontAttr ;
typedef TYPE_3__* HPDF_Font ;
typedef TYPE_4__* HPDF_Encoder ;
typedef TYPE_3__* HPDF_Dict ;
typedef TYPE_6__* HPDF_CMapEncoderAttr ;
typedef TYPE_7__ HPDF_CID_Width ;
typedef TYPE_8__* HPDF_CIDFontDefAttr ;
typedef TYPE_3__* HPDF_Array ;


 scalar_t__ HPDF_Array_Add (TYPE_3__*,TYPE_3__*) ;
 scalar_t__ HPDF_Array_AddNumber (TYPE_3__*,scalar_t__) ;
 TYPE_3__* HPDF_Array_New (int ) ;
 TYPE_3__* HPDF_Box_Array_New (int ,int ) ;
 scalar_t__ HPDF_Dict_Add (TYPE_3__*,char*,TYPE_3__*) ;
 scalar_t__ HPDF_Dict_AddName (TYPE_3__*,char*,char*) ;
 scalar_t__ HPDF_Dict_AddNumber (TYPE_3__*,char*,int ) ;
 TYPE_3__* HPDF_Dict_New (int ) ;
 scalar_t__ HPDF_List_ItemAt (TYPE_12__*,scalar_t__) ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 TYPE_3__* HPDF_String_New (int ,int ,int *) ;
 scalar_t__ HPDF_Xref_Add (int ,TYPE_3__*) ;

__attribute__((used)) static HPDF_Font
CIDFontType0_New (HPDF_Font parent, HPDF_Xref xref)
{
    HPDF_STATUS ret = HPDF_OK;
    HPDF_FontAttr attr = (HPDF_FontAttr)parent->attr;
    HPDF_FontDef fontdef = attr->fontdef;
    HPDF_CIDFontDefAttr fontdef_attr = (HPDF_CIDFontDefAttr)fontdef->attr;
    HPDF_Encoder encoder = attr->encoder;
    HPDF_CMapEncoderAttr encoder_attr =
                (HPDF_CMapEncoderAttr)encoder->attr;

    HPDF_UINT16 save_cid = 0;
    HPDF_Font font;
    HPDF_Array array;
    HPDF_Array sub_array = ((void*)0);
    HPDF_UINT i;

    HPDF_Dict descriptor;
    HPDF_Dict cid_system_info;

    HPDF_PTRACE ((" HPDF_CIDFontType0_New\n"));

    font = HPDF_Dict_New (parent->mmgr);
    if (!font)
        return ((void*)0);

    if (HPDF_Xref_Add (xref, font) != HPDF_OK)
        return ((void*)0);

    ret += HPDF_Dict_AddName (font, "Type", "Font");
    ret += HPDF_Dict_AddName (font, "Subtype", "CIDFontType0");
    ret += HPDF_Dict_AddNumber (font, "DW", fontdef_attr->DW);
    ret += HPDF_Dict_AddName (font, "BaseFont", fontdef->base_font);
    if (ret != HPDF_OK)
        return ((void*)0);


    array = HPDF_Array_New (parent->mmgr);
    if (!array)
        return ((void*)0);

    if (HPDF_Dict_Add (font, "DW2", array) != HPDF_OK)
        return ((void*)0);

    ret += HPDF_Array_AddNumber (array, fontdef_attr->DW2[0]);
    ret += HPDF_Array_AddNumber (array, fontdef_attr->DW2[1]);

    if (ret != HPDF_OK)
        return ((void*)0);


    array = HPDF_Array_New (parent->mmgr);
    if (!array)
        return ((void*)0);

    if (HPDF_Dict_Add (font, "W", array) != HPDF_OK)
        return ((void*)0);


    for (i = 0; i< fontdef_attr->widths->count; i++) {
        HPDF_CID_Width *w =
                (HPDF_CID_Width *)HPDF_List_ItemAt (fontdef_attr->widths, i);

        if (w->cid != save_cid + 1 || !sub_array) {
            sub_array = HPDF_Array_New (parent->mmgr);
            if (!sub_array)
                return ((void*)0);

            ret += HPDF_Array_AddNumber (array, w->cid);
            ret += HPDF_Array_Add (array, sub_array);
        }

        ret += HPDF_Array_AddNumber (sub_array, w->width);
        save_cid = w->cid;

        if (ret != HPDF_OK)
            return ((void*)0);
    }


    descriptor = HPDF_Dict_New (parent->mmgr);
    if (!descriptor)
        return ((void*)0);

    if (HPDF_Xref_Add (xref, descriptor) != HPDF_OK)
        return ((void*)0);

    if (HPDF_Dict_Add (font, "FontDescriptor", descriptor) != HPDF_OK)
        return ((void*)0);

    ret += HPDF_Dict_AddName (descriptor, "Type", "FontDescriptor");
    ret += HPDF_Dict_AddName (descriptor, "FontName", fontdef->base_font);
    ret += HPDF_Dict_AddNumber (descriptor, "Ascent", fontdef->ascent);
    ret += HPDF_Dict_AddNumber (descriptor, "Descent", fontdef->descent);
    ret += HPDF_Dict_AddNumber (descriptor, "CapHeight",
                fontdef->cap_height);
    ret += HPDF_Dict_AddNumber (descriptor, "MissingWidth",
                fontdef->missing_width);
    ret += HPDF_Dict_AddNumber (descriptor, "Flags", fontdef->flags);

    if (ret != HPDF_OK)
        return ((void*)0);

    array = HPDF_Box_Array_New (parent->mmgr, fontdef->font_bbox);
    if (!array)
        return ((void*)0);

    ret += HPDF_Dict_Add (descriptor, "FontBBox", array);
    ret += HPDF_Dict_AddNumber (descriptor, "ItalicAngle",
            fontdef->italic_angle);
    ret += HPDF_Dict_AddNumber (descriptor, "StemV", fontdef->stemv);

    if (ret != HPDF_OK)
        return ((void*)0);


    cid_system_info = HPDF_Dict_New (parent->mmgr);
    if (!cid_system_info)
        return ((void*)0);

    if (HPDF_Dict_Add (font, "CIDSystemInfo", cid_system_info) != HPDF_OK)
        return ((void*)0);

    ret += HPDF_Dict_Add (cid_system_info, "Registry",
            HPDF_String_New (parent->mmgr, encoder_attr->registry, ((void*)0)));
    ret += HPDF_Dict_Add (cid_system_info, "Ordering",
            HPDF_String_New (parent->mmgr, encoder_attr->ordering, ((void*)0)));
    ret += HPDF_Dict_AddNumber (cid_system_info, "Supplement",
            encoder_attr->suppliment);

    if (ret != HPDF_OK)
        return ((void*)0);

    return font;
}
