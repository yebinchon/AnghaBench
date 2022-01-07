
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int* FileName; } ;
typedef TYPE_1__* PDIRENTRY ;
typedef char* PCHAR ;


 int RtlZeroMemory (char*,int) ;

void FatParseShortFileName(PCHAR Buffer, PDIRENTRY DirEntry)
{
    ULONG Idx;

    Idx = 0;
    RtlZeroMemory(Buffer, 13);




    if (DirEntry->FileName[0] == 0x05)
    {
        DirEntry->FileName[0] = 0xE5;
    }




    while (Idx < 8)
    {
        if (DirEntry->FileName[Idx] == ' ')
        {
            break;
        }

        Buffer[Idx] = DirEntry->FileName[Idx];
        Idx++;
    }




    if ((DirEntry->FileName[8] != ' '))
    {
        Buffer[Idx++] = '.';
        Buffer[Idx++] = (DirEntry->FileName[8] == ' ') ? '\0' : DirEntry->FileName[8];
        Buffer[Idx++] = (DirEntry->FileName[9] == ' ') ? '\0' : DirEntry->FileName[9];
        Buffer[Idx++] = (DirEntry->FileName[10] == ' ') ? '\0' : DirEntry->FileName[10];
    }


}
