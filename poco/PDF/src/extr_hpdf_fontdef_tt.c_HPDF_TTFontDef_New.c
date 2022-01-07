
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int flags; void* attr; TYPE_1__* mmgr; int free_fn; int clean_fn; int type; int error; int sig_bytes; } ;
struct TYPE_10__ {int error; } ;
typedef int HPDF_TTFontDefAttr_Rec ;
typedef void* HPDF_TTFontDefAttr ;
typedef TYPE_1__* HPDF_MMgr ;
typedef int HPDF_FontDef_Rec ;
typedef TYPE_2__* HPDF_FontDef ;
typedef TYPE_2__ HPDF_BYTE ;


 int CleanFunc ;
 int FreeFunc ;
 int HPDF_FONTDEF_SIG_BYTES ;
 int HPDF_FONTDEF_TYPE_TRUETYPE ;
 int HPDF_FONT_STD_CHARSET ;
 int HPDF_FreeMem (TYPE_1__*,TYPE_2__*) ;
 void* HPDF_GetMem (TYPE_1__*,int) ;
 int HPDF_MemSet (TYPE_2__*,int ,int) ;
 int HPDF_PTRACE (char*) ;

HPDF_FontDef
HPDF_TTFontDef_New (HPDF_MMgr mmgr)
{
    HPDF_FontDef fontdef;
    HPDF_TTFontDefAttr fontdef_attr;

    HPDF_PTRACE ((" HPDF_TTFontDef_New\n"));

    if (!mmgr)
        return ((void*)0);

    fontdef = HPDF_GetMem (mmgr, sizeof(HPDF_FontDef_Rec));
    if (!fontdef)
        return ((void*)0);

    HPDF_MemSet (fontdef, 0, sizeof(HPDF_FontDef_Rec));
    fontdef->sig_bytes = HPDF_FONTDEF_SIG_BYTES;
    fontdef->mmgr = mmgr;
    fontdef->error = mmgr->error;
    fontdef->type = HPDF_FONTDEF_TYPE_TRUETYPE;
    fontdef->clean_fn = CleanFunc;
    fontdef->free_fn = FreeFunc;

    fontdef_attr = HPDF_GetMem (mmgr, sizeof(HPDF_TTFontDefAttr_Rec));
    if (!fontdef_attr) {
        HPDF_FreeMem (fontdef->mmgr, fontdef);
        return ((void*)0);
    }

    fontdef->attr = fontdef_attr;
    HPDF_MemSet ((HPDF_BYTE *)fontdef_attr, 0, sizeof(HPDF_TTFontDefAttr_Rec));
    fontdef->flags = HPDF_FONT_STD_CHARSET;

    return fontdef;
}
