
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef size_t ULONG ;
typedef scalar_t__ UCHAR ;
typedef scalar_t__* PUCHAR ;
typedef scalar_t__* PCSTR ;


 int TextVideoBuffer ;
 size_t UiScreenWidth ;

VOID TuiDrawText(ULONG X, ULONG Y, PCSTR Text, UCHAR Attr)
{
    PUCHAR ScreenMemory = (PUCHAR)TextVideoBuffer;
    ULONG i, j;


    for (i = X, j = 0; Text[j] && i < UiScreenWidth; i++, j++)
    {
        ScreenMemory[((Y*2)*UiScreenWidth)+(i*2)] = (UCHAR)Text[j];
        ScreenMemory[((Y*2)*UiScreenWidth)+(i*2)+1] = Attr;
    }
}
