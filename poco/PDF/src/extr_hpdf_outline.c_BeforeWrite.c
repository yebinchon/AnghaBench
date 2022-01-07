
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
typedef int HPDF_UINT ;
typedef int HPDF_STATUS ;
typedef int HPDF_Outline ;
typedef TYPE_1__* HPDF_Number ;
typedef scalar_t__ HPDF_Dict ;


 int CountChild (int ) ;
 int HPDF_Dict_AddNumber (scalar_t__,char*,int) ;
 int HPDF_Dict_GetItem (scalar_t__,char*,int ) ;
 int HPDF_Dict_RemoveElement (scalar_t__,char*) ;
 int HPDF_OCLASS_NUMBER ;
 int HPDF_OK ;
 int HPDF_Outline_GetOpened (int ) ;
 int HPDF_PTRACE (char*) ;

__attribute__((used)) static HPDF_STATUS
BeforeWrite (HPDF_Dict obj)
{
    HPDF_Number n = (HPDF_Number)HPDF_Dict_GetItem (obj, "Count",
                HPDF_OCLASS_NUMBER);
    HPDF_UINT count = CountChild ((HPDF_Outline)obj);

    HPDF_PTRACE((" BeforeWrite\n"));

    if (count == 0 && n)
        return HPDF_Dict_RemoveElement (obj, "Count");

    if (!HPDF_Outline_GetOpened ((HPDF_Outline)obj))
        count = count * -1;

    if (n)
        n->value = count;
    else
        if (count)
            return HPDF_Dict_AddNumber (obj, "Count", count);

    return HPDF_OK;
}
