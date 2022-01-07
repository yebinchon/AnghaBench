
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int cap_height; int x_height; int descent; int ascent; int bbox; int widths_table; scalar_t__ is_font_specific; int font_name; } ;
struct TYPE_14__ {char* base_font; void* valid; int cap_height; int x_height; int descent; int ascent; int font_bbox; scalar_t__ attr; } ;
struct TYPE_13__ {int error; } ;
struct TYPE_12__ {char* encoding_scheme; void* is_base14font; } ;
typedef TYPE_1__* HPDF_Type1FontDefAttr ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_2__* HPDF_MMgr ;
typedef TYPE_3__* HPDF_FontDef ;
typedef TYPE_4__ HPDF_Base14FontDefData ;


 TYPE_4__* HPDF_Base14FontDef_FindBuiltinData (char const*) ;
 int HPDF_ENCODING_FONT_SPECIFIC ;
 int HPDF_FontDef_Free (TYPE_3__*) ;
 int HPDF_INVALID_FONT_NAME ;
 int HPDF_LIMIT_MAX_NAME_LEN ;
 scalar_t__ HPDF_OK ;
 int HPDF_SetError (int ,int ,int ) ;
 int HPDF_StrCpy (char*,int ,char*) ;
 void* HPDF_TRUE ;
 TYPE_3__* HPDF_Type1FontDef_New (TYPE_2__*) ;
 scalar_t__ HPDF_Type1FontDef_SetWidths (TYPE_3__*,int ) ;

HPDF_FontDef
HPDF_Base14FontDef_New (HPDF_MMgr mmgr,
                         const char *font_name)
{
    HPDF_FontDef fontdef;
    HPDF_STATUS ret;
    const HPDF_Base14FontDefData *data;
    char *eptr;
    HPDF_Type1FontDefAttr attr;

    fontdef = HPDF_Type1FontDef_New (mmgr);
    if (!fontdef)
        return ((void*)0);

    data = HPDF_Base14FontDef_FindBuiltinData (font_name);

    if (!data->font_name) {
        HPDF_SetError (mmgr->error, HPDF_INVALID_FONT_NAME, 0);
        HPDF_FontDef_Free (fontdef);
        return ((void*)0);
    }

    eptr = fontdef->base_font + HPDF_LIMIT_MAX_NAME_LEN;
    HPDF_StrCpy (fontdef->base_font, data->font_name, eptr);

    attr = (HPDF_Type1FontDefAttr)fontdef->attr;
    attr->is_base14font = HPDF_TRUE;

    if (data->is_font_specific)
        HPDF_StrCpy (attr->encoding_scheme, HPDF_ENCODING_FONT_SPECIFIC,
                attr->encoding_scheme + HPDF_LIMIT_MAX_NAME_LEN);

    ret = HPDF_Type1FontDef_SetWidths (fontdef, data->widths_table);

    if (ret != HPDF_OK) {
        HPDF_FontDef_Free (fontdef);
        return ((void*)0);
    }

    fontdef->font_bbox = data->bbox;
    fontdef->ascent = data->ascent;
    fontdef->descent = data->descent;
    fontdef->x_height = data->x_height;
    fontdef->cap_height = data->cap_height;

    fontdef->valid = HPDF_TRUE;

    return fontdef;
}
