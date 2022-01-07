
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ count; } ;
struct TYPE_8__ {int DW; TYPE_4__* widths; } ;
struct TYPE_7__ {scalar_t__ cid; int width; } ;
struct TYPE_6__ {int attr; } ;
typedef scalar_t__ HPDF_UINT16 ;
typedef scalar_t__ HPDF_UINT ;
typedef int HPDF_INT16 ;
typedef TYPE_1__* HPDF_FontDef ;
typedef TYPE_2__ HPDF_CID_Width ;
typedef TYPE_3__* HPDF_CIDFontDefAttr ;


 scalar_t__ HPDF_List_ItemAt (TYPE_4__*,scalar_t__) ;
 int HPDF_PTRACE (char*) ;

HPDF_INT16
HPDF_CIDFontDef_GetCIDWidth (HPDF_FontDef fontdef,
                              HPDF_UINT16 cid)
{
    HPDF_CIDFontDefAttr attr = (HPDF_CIDFontDefAttr)fontdef->attr;
    HPDF_UINT i;

    HPDF_PTRACE ((" HPDF_CIDFontDef_GetCIDWidth\n"));

    for (i = 0; i < attr->widths->count; i++) {
        HPDF_CID_Width *w = (HPDF_CID_Width *)HPDF_List_ItemAt (attr->widths,
                i);

        if (w->cid == cid)
            return w->width;
    }


    return attr->DW;
}
