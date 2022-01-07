
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PWSTR ;
typedef int* PINT ;
typedef scalar_t__ PCWSTR ;


 int wcstol (scalar_t__,scalar_t__*,int) ;

__attribute__((used)) static PCWSTR
FindPortNum(PCWSTR argStr, PINT PortNum)
{
    PWSTR endptr = ((void*)0);

    *PortNum = wcstol(argStr, &endptr, 10);
    if (endptr == argStr)
    {
        *PortNum = -1;
        return ((void*)0);
    }

    return endptr;
}
