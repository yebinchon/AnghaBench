
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef int * PUCHAR ;


 int TextVideoBuffer ;
 int UiScreenHeight ;
 int UiScreenWidth ;

VOID TuiSaveScreen(PUCHAR Buffer)
{
    PUCHAR ScreenMemory = (PUCHAR)TextVideoBuffer;
    ULONG i;

    for (i=0; i < (UiScreenWidth * UiScreenHeight * 2); i++)
    {
        Buffer[i] = ScreenMemory[i];
    }
}
