
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PCWSTR ;
typedef int * PBYTE ;


 int ONE5STOPBITS ;
 int ONESTOPBIT ;
 int TWOSTOPBITS ;
 scalar_t__ _wcsnicmp (int*,char*,int) ;

__attribute__((used)) static PCWSTR
ParseStopBits(PCWSTR argStr, PBYTE StopBits)
{
    if (_wcsnicmp(argStr, L"1.5", 3) == 0)
    {
        argStr += 3;
        *StopBits = ONE5STOPBITS;
    }
    else
    {
        if (*argStr == L'1')
            *StopBits = ONESTOPBIT;
        else if (*argStr == L'2')
            *StopBits = TWOSTOPBITS;
        else
            return ((void*)0);

        argStr++;
    }

    return argStr;
}
