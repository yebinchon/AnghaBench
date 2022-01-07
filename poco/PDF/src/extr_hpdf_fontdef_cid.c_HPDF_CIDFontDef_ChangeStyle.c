
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stemv; int italic_angle; int flags; int attr; } ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_FontDef ;
typedef scalar_t__ HPDF_BOOL ;


 int HPDF_FONT_FOURCE_BOLD ;
 int HPDF_FONT_ITALIC ;
 int HPDF_INVALID_FONTDEF_DATA ;
 int HPDF_OK ;
 int HPDF_PTRACE (char*) ;

HPDF_STATUS
HPDF_CIDFontDef_ChangeStyle (HPDF_FontDef fontdef,
                              HPDF_BOOL bold,
                              HPDF_BOOL italic)
{
    HPDF_PTRACE ((" HPDF_CIDFontDef_ChangeStyle\n"));

    if (!fontdef || !fontdef->attr)
        return HPDF_INVALID_FONTDEF_DATA;

    if (bold) {
        fontdef->stemv *= 2;
        fontdef->flags |= HPDF_FONT_FOURCE_BOLD;
    }

    if (italic) {
        fontdef->italic_angle -= 11;
        fontdef->flags |= HPDF_FONT_ITALIC;
    }

    return HPDF_OK;
}
