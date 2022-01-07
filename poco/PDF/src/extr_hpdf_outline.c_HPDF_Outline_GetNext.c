
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_Outline ;


 int HPDF_Dict_GetItem (int ,char*,int ) ;
 int HPDF_OCLASS_DICT ;
 int HPDF_PTRACE (char*) ;

HPDF_Outline
HPDF_Outline_GetNext (HPDF_Outline outline)
{
    HPDF_PTRACE((" HPDF_Outline_GetNext\n"));

    return (HPDF_Outline)HPDF_Dict_GetItem (outline, "Next", HPDF_OCLASS_DICT);
}
