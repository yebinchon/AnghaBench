
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef char* PCHAR ;



ULONG IniGetSectionNameSize(PCHAR SectionNameLine, ULONG LineLength)
{
    ULONG Idx;
    ULONG NameSize;


    for (Idx=0; Idx<LineLength; Idx++)
    {
        if ((SectionNameLine[Idx] == ' ') ||
            (SectionNameLine[Idx] == '\t'))
        {
            continue;
        }
        else
        {
            break;
        }
    }


    Idx++;


    for (NameSize=0; Idx<LineLength; Idx++)
    {
        if ((SectionNameLine[Idx] == ']') ||
            (SectionNameLine[Idx] == '\0'))
        {
            break;
        }


        NameSize++;
    }


    NameSize++;

    return NameSize;
}
