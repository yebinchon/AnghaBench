
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int* PINT ;
typedef int* LPWSTR ;


 scalar_t__ GetULONG (int*) ;

__attribute__((used)) static ULONG
GetULONG2(LPWSTR String1, LPWSTR String2, PINT i)
{
    ULONG Value;


    Value = GetULONG(String1);
    if (Value == (ULONG)-1)
    {

        if (String2[0] != L'-')
        {

            Value = GetULONG(String2);
            *i += 1;
        }
    }

    return Value;
}
