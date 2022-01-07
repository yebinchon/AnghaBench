
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef size_t ULONG ;
typedef char* PCHAR ;



VOID IniExtractSectionName(PCHAR SectionName, PCHAR SectionNameLine, ULONG LineLength)
{
    ULONG Idx;
    ULONG DestIdx;


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


    for (DestIdx=0; Idx<LineLength; Idx++)
    {
        if ((SectionNameLine[Idx] == ']') ||
            (SectionNameLine[Idx] == '\0'))
        {
            break;
        }


        SectionName[DestIdx] = SectionNameLine[Idx];
        DestIdx++;
    }


    SectionName[DestIdx] = '\0';
}
