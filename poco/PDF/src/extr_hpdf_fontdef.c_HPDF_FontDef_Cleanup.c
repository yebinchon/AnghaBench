
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * descriptor; int (* clean_fn ) (TYPE_1__*) ;} ;
typedef TYPE_1__* HPDF_FontDef ;


 int HPDF_PTRACE (char*) ;
 int stub1 (TYPE_1__*) ;

void
HPDF_FontDef_Cleanup (HPDF_FontDef fontdef)
{
    if (!fontdef)
        return;

    HPDF_PTRACE ((" HPDF_FontDef_Cleanup\n"));

    if (fontdef->clean_fn)
        fontdef->clean_fn (fontdef);

    fontdef->descriptor = ((void*)0);
}
