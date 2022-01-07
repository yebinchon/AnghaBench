
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCWSTR ;
typedef size_t GROUPFORMAT ;


 size_t NT_Unicode ;

LPCWSTR GroupFormatToFormatName(GROUPFORMAT Format)
{
    static const LPCWSTR FormatNames[] =
    {
        L"Windows 3.1",
        L"NT Ansi",
        L"NT Unicode"
    };

    if (Format > NT_Unicode)
        return ((void*)0);
    else
        return FormatNames[Format];
}
