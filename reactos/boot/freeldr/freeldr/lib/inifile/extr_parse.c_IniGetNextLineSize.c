
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef char* PCHAR ;



ULONG IniGetNextLineSize(PCHAR IniFileData, ULONG IniFileSize, ULONG CurrentOffset)
{
    ULONG LineCharCount = 0;



    for (; (CurrentOffset < IniFileSize); CurrentOffset++)
    {

        LineCharCount++;


        if (IniFileData[CurrentOffset] == '\n')
        {
            break;
        }
    }


    LineCharCount++;


    return LineCharCount;
}
