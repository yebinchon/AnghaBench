
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ count; } ;
struct TYPE_7__ {TYPE_3__* widths; } ;
struct TYPE_6__ {int valid; int mmgr; int attr; } ;
typedef scalar_t__ HPDF_UINT ;
typedef TYPE_1__* HPDF_FontDef ;
typedef int HPDF_CID_Width ;
typedef TYPE_2__* HPDF_CIDFontDefAttr ;


 int HPDF_FALSE ;
 int HPDF_FreeMem (int ,int *) ;
 int HPDF_List_Free (TYPE_3__*) ;
 scalar_t__ HPDF_List_ItemAt (TYPE_3__*,scalar_t__) ;
 int HPDF_PTRACE (char*) ;

void
HPDF_CIDFontDef_FreeWidth (HPDF_FontDef fontdef)
{
    HPDF_CIDFontDefAttr attr = (HPDF_CIDFontDefAttr)fontdef->attr;
    HPDF_UINT i;

    HPDF_PTRACE ((" HPDF_FontDef_Validate\n"));

    for (i = 0; i < attr->widths->count; i++) {
        HPDF_CID_Width *w =
                    (HPDF_CID_Width *)HPDF_List_ItemAt (attr->widths, i);

        HPDF_FreeMem (fontdef->mmgr, w);
    }

    HPDF_List_Free (attr->widths);
    attr->widths = ((void*)0);

    fontdef->valid = HPDF_FALSE;
}
