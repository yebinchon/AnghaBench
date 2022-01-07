
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ font_name; } ;
typedef size_t HPDF_UINT ;
typedef TYPE_1__ HPDF_Base14FontDefData ;


 TYPE_1__ const* HPDF_BUILTIN_FONTS ;
 scalar_t__ HPDF_StrCmp (scalar_t__,char const*) ;

const HPDF_Base14FontDefData*
HPDF_Base14FontDef_FindBuiltinData (const char *font_name)
{
    HPDF_UINT i = 0;

    while (HPDF_BUILTIN_FONTS[i].font_name) {
        if (HPDF_StrCmp (HPDF_BUILTIN_FONTS[i].font_name, font_name) == 0)
            break;

        i++;
    }

    return &HPDF_BUILTIN_FONTS[i];
}
