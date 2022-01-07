
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int valid; int type; } ;
typedef int HPDF_MMgr ;
typedef TYPE_1__* HPDF_FontDef ;


 int HPDF_PTRACE (char*) ;
 TYPE_1__* HPDF_Type1FontDef_New (int ) ;

HPDF_FontDef
HPDF_Type1FontDef_Duplicate (HPDF_MMgr mmgr,
                              HPDF_FontDef src)
{
    HPDF_FontDef fontdef = HPDF_Type1FontDef_New (mmgr);

    HPDF_PTRACE ((" HPDF_Type1FontDef_Duplicate\n"));

    fontdef->type = src->type;
    fontdef->valid = src->valid;



    return ((void*)0);
}
