
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef char* PCHAR ;



ULONG IniGetSettingValueSize(PCHAR SettingValueLine, ULONG LineLength)
{
    ULONG Idx;
    ULONG ValueSize;


    for (Idx=0; Idx<LineLength; Idx++)
    {
        if ((SettingValueLine[Idx] == ' ') ||
            (SettingValueLine[Idx] == '\t'))
        {
            continue;
        }
        else
        {
            break;
        }
    }


    for (; Idx<LineLength; Idx++)
    {
        if (SettingValueLine[Idx] == '=')
        {
            Idx++;
            break;
        }


        if (SettingValueLine[Idx] == '\0')
        {
            return 0;
        }
    }


    for (ValueSize=0; Idx<LineLength; Idx++)
    {
        if (SettingValueLine[Idx] == '\0')
        {
            break;
        }


        ValueSize++;
    }


    ValueSize++;

    return ValueSize;
}
