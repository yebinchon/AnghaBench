
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
typedef int HPDF_Outline ;
typedef TYPE_1__* HPDF_Number ;
typedef int HPDF_BOOL ;


 int HPDF_Dict_GetItem (int ,char*,int ) ;
 int HPDF_FALSE ;
 int HPDF_OCLASS_NUMBER ;
 int HPDF_PTRACE (char*) ;

HPDF_BOOL
HPDF_Outline_GetOpened (HPDF_Outline outline)
{
    HPDF_Number n = (HPDF_Number)HPDF_Dict_GetItem (outline, "_OPENED",
                        HPDF_OCLASS_NUMBER);

    HPDF_PTRACE((" HPDF_Outline_GetOpened\n"));

    if (!n)
        return HPDF_FALSE;

    return (HPDF_BOOL)n->value;
}
