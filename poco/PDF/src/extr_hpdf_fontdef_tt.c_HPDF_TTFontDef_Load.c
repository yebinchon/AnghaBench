
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_Stream ;
typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_MMgr ;
typedef int * HPDF_FontDef ;
typedef int HPDF_BOOL ;


 int HPDF_FontDef_Free (int *) ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_Stream_Free (int ) ;
 int * HPDF_TTFontDef_New (int ) ;
 scalar_t__ LoadFontData (int *,int ,int ,int ) ;

HPDF_FontDef
HPDF_TTFontDef_Load (HPDF_MMgr mmgr,
                      HPDF_Stream stream,
                      HPDF_BOOL embedding)
{
    HPDF_STATUS ret;
    HPDF_FontDef fontdef;

    HPDF_PTRACE ((" HPDF_TTFontDef_Load\n"));

    fontdef = HPDF_TTFontDef_New (mmgr);

    if (!fontdef) {
        HPDF_Stream_Free (stream);
        return ((void*)0);
    }

    ret = LoadFontData (fontdef, stream, embedding, 0);
    if (ret != HPDF_OK) {
        HPDF_FontDef_Free (fontdef);
        return ((void*)0);
    }

    return fontdef;
}
