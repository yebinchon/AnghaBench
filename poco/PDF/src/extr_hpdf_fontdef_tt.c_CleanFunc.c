
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int attr; } ;
struct TYPE_5__ {int* flgs; } ;
struct TYPE_6__ {int num_glyphs; TYPE_1__ glyph_tbl; } ;
typedef TYPE_2__* HPDF_TTFontDefAttr ;
typedef TYPE_3__* HPDF_FontDef ;
typedef int HPDF_BYTE ;


 int HPDF_MemSet (int*,int ,int) ;

__attribute__((used)) static void
CleanFunc (HPDF_FontDef fontdef)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;
    HPDF_MemSet (attr->glyph_tbl.flgs, 0,
            sizeof (HPDF_BYTE) * attr->num_glyphs);
    attr->glyph_tbl.flgs[0] = 1;
}
