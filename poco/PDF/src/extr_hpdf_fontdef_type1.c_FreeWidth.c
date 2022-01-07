
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int valid; int mmgr; int attr; } ;
struct TYPE_4__ {int * widths; } ;
typedef TYPE_1__* HPDF_Type1FontDefAttr ;
typedef TYPE_2__* HPDF_FontDef ;


 int HPDF_FALSE ;
 int HPDF_FreeMem (int ,int *) ;
 int HPDF_PTRACE (char*) ;

__attribute__((used)) static void
FreeWidth (HPDF_FontDef fontdef)
{
    HPDF_Type1FontDefAttr attr = (HPDF_Type1FontDefAttr)fontdef->attr;

    HPDF_PTRACE ((" FreeWidth\n"));

    HPDF_FreeMem (fontdef->mmgr, attr->widths);
    attr->widths = ((void*)0);

    fontdef->valid = HPDF_FALSE;
}
