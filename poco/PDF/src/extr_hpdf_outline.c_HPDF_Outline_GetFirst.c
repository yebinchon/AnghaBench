
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_Outline ;


 int HPDF_Dict_GetItem (int ,char*,int ) ;
 int HPDF_OCLASS_DICT ;
 int HPDF_PTRACE (char*) ;

HPDF_Outline
HPDF_Outline_GetFirst (HPDF_Outline outline)
{
    HPDF_PTRACE((" HPDF_Outline_GetFirst\n"));

    return (HPDF_Outline)HPDF_Dict_GetItem (outline, "First",
                    HPDF_OCLASS_DICT);
}
