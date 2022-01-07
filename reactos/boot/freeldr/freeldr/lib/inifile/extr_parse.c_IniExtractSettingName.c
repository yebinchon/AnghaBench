
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef size_t ULONG ;
typedef char* PCHAR ;



VOID IniExtractSettingName(PCHAR SettingName, PCHAR SettingNameLine, ULONG LineLength)
{
    ULONG Idx;
    ULONG DestIdx;


    for (Idx=0; Idx<LineLength; Idx++)
    {
        if ((SettingNameLine[Idx] == ' ') ||
            (SettingNameLine[Idx] == '\t'))
        {
            continue;
        }
        else
        {
            break;
        }
    }


    for (DestIdx=0; Idx<LineLength; Idx++)
    {
        if ((SettingNameLine[Idx] == '=') ||
            (SettingNameLine[Idx] == '\0'))
        {
            break;
        }


        SettingName[DestIdx] = SettingNameLine[Idx];
        DestIdx++;
    }


    SettingName[DestIdx] = '\0';
}
