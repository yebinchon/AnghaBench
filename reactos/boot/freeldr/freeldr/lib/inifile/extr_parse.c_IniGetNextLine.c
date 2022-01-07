
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef char* PCHAR ;



ULONG IniGetNextLine(PCHAR IniFileData, ULONG IniFileSize, PCHAR Buffer, ULONG BufferSize, ULONG CurrentOffset)
{
    ULONG Idx;



    for (Idx=0; (CurrentOffset < IniFileSize); CurrentOffset++)
    {


        if (Idx < (BufferSize - 1))
        {
            Buffer[Idx++] = IniFileData[CurrentOffset];
        }


        if (IniFileData[CurrentOffset] == '\n')
        {
            CurrentOffset++;
            break;
        }
    }


    Buffer[Idx] = '\0';


    while(Idx && (Buffer[--Idx] == '\n' || Buffer[Idx] == '\r'))
        Buffer[Idx] = '\0';


    return CurrentOffset;
}
