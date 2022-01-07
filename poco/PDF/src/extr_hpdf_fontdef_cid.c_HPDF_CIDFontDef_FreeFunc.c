
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mmgr; int attr; } ;
typedef TYPE_1__* HPDF_FontDef ;
typedef int HPDF_CIDFontDefAttr ;


 int HPDF_CIDFontDef_FreeWidth (TYPE_1__*) ;
 int HPDF_FreeMem (int ,int ) ;
 int HPDF_PTRACE (char*) ;

void
HPDF_CIDFontDef_FreeFunc (HPDF_FontDef fontdef)
{
    HPDF_CIDFontDefAttr attr = (HPDF_CIDFontDefAttr)fontdef->attr;

    HPDF_PTRACE ((" HPDF_CIDFontDef_FreeFunc\n"));

    HPDF_CIDFontDef_FreeWidth (fontdef);
    HPDF_FreeMem (fontdef->mmgr, attr);
}
