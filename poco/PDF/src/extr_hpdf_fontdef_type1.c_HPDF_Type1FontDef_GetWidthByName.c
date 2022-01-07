
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_UNICODE ;
typedef int HPDF_INT16 ;
typedef int HPDF_FontDef ;


 int HPDF_GryphNameToUnicode (char const*) ;
 int HPDF_PTRACE (char*) ;
 int HPDF_Type1FontDef_GetWidth (int ,int ) ;

HPDF_INT16
HPDF_Type1FontDef_GetWidthByName (HPDF_FontDef fontdef,
                                   const char* gryph_name)
{
    HPDF_UNICODE unicode = HPDF_GryphNameToUnicode (gryph_name);

    HPDF_PTRACE ((" HPDF_Type1FontDef_GetWidthByName\n"));

    return HPDF_Type1FontDef_GetWidth (fontdef, unicode);
}
