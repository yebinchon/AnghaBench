
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef size_t UINT ;
typedef int* LPWSTR ;


 scalar_t__ wcslen (int*) ;
 int wcstoul (int*,int**,int) ;

__attribute__((used)) static ULONG
GetULONG(LPWSTR String)
{
    UINT i, Length;
    ULONG Value;
    LPWSTR StopString;

    i = 0;

    Length = (UINT)wcslen(String);


    while ((i < Length) && ((String[i] < L'0') || (String[i] > L'9'))) i++;
    if ((i >= Length) || ((String[i] < L'0') || (String[i] > L'9')))
    {
        return (ULONG)-1;
    }


    Value = wcstoul(&String[i], &StopString, 10);

    return Value;
}
