
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mmgr; int (* free_fn ) (TYPE_1__*) ;} ;
typedef TYPE_1__* HPDF_FontDef ;


 int HPDF_FreeMem (int ,TYPE_1__*) ;
 int HPDF_PTRACE (char*) ;
 int stub1 (TYPE_1__*) ;

void
HPDF_FontDef_Free (HPDF_FontDef fontdef)
{
    if (!fontdef)
        return;

    HPDF_PTRACE ((" HPDF_FontDef_Free\n"));

    if (fontdef->free_fn)
        fontdef->free_fn (fontdef);
    HPDF_FreeMem (fontdef->mmgr, fontdef);
}
