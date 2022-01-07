
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_Stream ;
typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_MMgr ;
typedef int * HPDF_FontDef ;


 int HPDF_FontDef_Free (int *) ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int * HPDF_Type1FontDef_New (int ) ;
 scalar_t__ LoadAfm (int *,int ) ;
 scalar_t__ LoadFontData (int *,int ) ;

HPDF_FontDef
HPDF_Type1FontDef_Load (HPDF_MMgr mmgr,
                         HPDF_Stream afm,
                         HPDF_Stream font_data)
{
    HPDF_FontDef fontdef;
    HPDF_STATUS ret;

    HPDF_PTRACE ((" HPDF_Type1FontDef_Load\n"));

    if (!afm)
        return ((void*)0);

    fontdef = HPDF_Type1FontDef_New (mmgr);

    if (!fontdef)
        return ((void*)0);

    ret = LoadAfm (fontdef, afm);
    if (ret != HPDF_OK) {
        HPDF_FontDef_Free (fontdef);
        return ((void*)0);
    }


    if (font_data) {
        ret = LoadFontData (fontdef, font_data);
        if (ret != HPDF_OK) {
            HPDF_FontDef_Free (fontdef);
            return ((void*)0);
        }
    }

    return fontdef;
}
