
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* PCHAR ;



__attribute__((used)) static
PCHAR
IniCacheSkipToNextSection(
    PCHAR Ptr)
{
    while (*Ptr != 0 && *Ptr != '[')
    {
        while (*Ptr != 0 && *Ptr != L'\n')
        {
            Ptr++;
        }

        Ptr++;
    }

    return (*Ptr == 0) ? ((void*)0) : Ptr;
}
