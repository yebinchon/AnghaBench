
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int missing_width; int attr; } ;
struct TYPE_8__ {scalar_t__ advance_width; } ;
struct TYPE_6__ {int units_per_em; } ;
struct TYPE_7__ {size_t num_glyphs; TYPE_1__ header; TYPE_3__* h_metric; } ;
typedef size_t HPDF_UINT16 ;
typedef int HPDF_UINT ;
typedef TYPE_2__* HPDF_TTFontDefAttr ;
typedef TYPE_3__ HPDF_TTF_LongHorMetric ;
typedef int HPDF_INT16 ;
typedef TYPE_4__* HPDF_FontDef ;


 int HPDF_PTRACE (char*) ;

HPDF_INT16
HPDF_TTFontDef_GetGidWidth (HPDF_FontDef fontdef,
                             HPDF_UINT16 gid)
{
    HPDF_UINT16 advance_width;
    HPDF_TTF_LongHorMetric hmetrics;
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;

    HPDF_PTRACE((" HPDF_TTFontDef_GetGidWidth\n"));

    if (gid >= attr->num_glyphs) {
        HPDF_PTRACE((" HPDF_TTFontDef_GetGidWidth WARNING gid > "
                    "num_glyphs %u > %u\n", gid, attr->num_glyphs));
        return fontdef->missing_width;
    }

    hmetrics = attr->h_metric[gid];

    advance_width = (HPDF_UINT16)((HPDF_UINT)hmetrics.advance_width * 1000 /
            attr->header.units_per_em);

    HPDF_PTRACE((" HPDF_TTFontDef_GetGidWidth gid=%u, width=%u\n",
                gid, advance_width));

    return (HPDF_INT16)advance_width;
}
