
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ unicode; int width; } ;
struct TYPE_6__ {int missing_width; int attr; } ;
struct TYPE_5__ {scalar_t__ widths_count; TYPE_3__* widths; } ;
typedef scalar_t__ HPDF_UNICODE ;
typedef scalar_t__ HPDF_UINT ;
typedef TYPE_1__* HPDF_Type1FontDefAttr ;
typedef int HPDF_INT16 ;
typedef TYPE_2__* HPDF_FontDef ;
typedef TYPE_3__ HPDF_CharData ;


 int HPDF_PTRACE (char*) ;

HPDF_INT16
HPDF_Type1FontDef_GetWidth (HPDF_FontDef fontdef,
                             HPDF_UNICODE unicode)
{
    HPDF_Type1FontDefAttr attr = (HPDF_Type1FontDefAttr)fontdef->attr;
    HPDF_CharData *cdata = attr->widths;
    HPDF_UINT i;

    HPDF_PTRACE ((" HPDF_Type1FontDef_GetWidth\n"));

    for (i = 0; i < attr->widths_count; i++) {
        if (cdata->unicode == unicode)
            return cdata->width;
        cdata++;
    }

    return fontdef->missing_width;
}
