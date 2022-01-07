
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int mmgr; int attr; } ;
struct TYPE_5__ {struct TYPE_5__* widths; scalar_t__ font_data; struct TYPE_5__* char_set; } ;
typedef TYPE_1__* HPDF_Type1FontDefAttr ;
typedef TYPE_2__* HPDF_FontDef ;


 int HPDF_FreeMem (int ,TYPE_1__*) ;
 int HPDF_PTRACE (char*) ;
 int HPDF_Stream_Free (scalar_t__) ;

__attribute__((used)) static void
FreeFunc (HPDF_FontDef fontdef)
{
    HPDF_Type1FontDefAttr attr = (HPDF_Type1FontDefAttr)fontdef->attr;

    HPDF_PTRACE ((" FreeFunc\n"));

    if (attr->char_set)
        HPDF_FreeMem (fontdef->mmgr, attr->char_set);

    if (attr->font_data)
        HPDF_Stream_Free (attr->font_data);

    HPDF_FreeMem (fontdef->mmgr, attr->widths);
    HPDF_FreeMem (fontdef->mmgr, attr);
}
