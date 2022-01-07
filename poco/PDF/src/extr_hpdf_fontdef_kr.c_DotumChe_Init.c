
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ascent; int descent; int cap_height; int stemv; int valid; int type; scalar_t__ italic_angle; scalar_t__ flags; int font_bbox; } ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_FontDef ;


 int DotumChe_W_ARRAY ;
 int HPDF_CIDFontDef_AddWidth (TYPE_1__*,int ) ;
 int HPDF_FONTDEF_TYPE_CID ;
 scalar_t__ HPDF_FONT_FIXED_WIDTH ;
 scalar_t__ HPDF_FONT_SYMBOLIC ;
 int HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_TRUE ;
 int HPDF_ToBox (int ,int,int,int) ;

__attribute__((used)) static HPDF_STATUS
DotumChe_Init (HPDF_FontDef fontdef)
{
    HPDF_STATUS ret;

    HPDF_PTRACE ((" HPDF_FontDef_DotumChe_Init\n"));

    fontdef->ascent = 858;
    fontdef->descent = -141;
    fontdef->cap_height = 679;
    fontdef->font_bbox = HPDF_ToBox(0, -150, 1000, 863);
    fontdef->flags = HPDF_FONT_SYMBOLIC + HPDF_FONT_FIXED_WIDTH;
    fontdef->italic_angle = 0;
    fontdef->stemv = 78;
    if ((ret = HPDF_CIDFontDef_AddWidth (fontdef, DotumChe_W_ARRAY)) !=
                HPDF_OK) {
        return ret;
    }

    fontdef->type = HPDF_FONTDEF_TYPE_CID;
    fontdef->valid = HPDF_TRUE;

    return HPDF_OK;
}
