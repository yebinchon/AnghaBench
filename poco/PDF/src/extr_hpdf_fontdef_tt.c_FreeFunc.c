
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mmgr; int attr; } ;
typedef scalar_t__ HPDF_TTFontDefAttr ;
typedef TYPE_1__* HPDF_FontDef ;


 int HPDF_FreeMem (int ,scalar_t__) ;
 int HPDF_PTRACE (char*) ;
 int InitAttr (TYPE_1__*) ;

__attribute__((used)) static void
FreeFunc (HPDF_FontDef fontdef)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;

    HPDF_PTRACE ((" HPDF_TTFontDef_FreeFunc\n"));

    if (attr) {
        InitAttr (fontdef);

        HPDF_FreeMem (fontdef->mmgr, attr);
    }
}
