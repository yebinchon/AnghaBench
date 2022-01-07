
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef int * PUCHAR ;


 int ATTR (int ,int ) ;
 int COLOR_BLACK ;
 int COLOR_GRAY ;
 int TextVideoBuffer ;
 int UiScreenHeight ;
 int UiScreenWidth ;

VOID TuiDrawShadow(ULONG Left, ULONG Top, ULONG Right, ULONG Bottom)
{
    PUCHAR ScreenMemory = (PUCHAR)TextVideoBuffer;
    ULONG Idx;


    if (Bottom < (UiScreenHeight - 1))
    {
        if (UiScreenHeight < 34)
        {
            Idx=Left + 2;
        }
        else
        {
            Idx=Left + 1;
        }

        for (; Idx<=Right; Idx++)
        {
            ScreenMemory[(((Bottom+1)*2)*UiScreenWidth)+(Idx*2)+1] = ATTR(COLOR_GRAY, COLOR_BLACK);
        }
    }


    if (Right < (UiScreenWidth - 1))
    {
        for (Idx=Top+1; Idx<=Bottom; Idx++)
        {
            ScreenMemory[((Idx*2)*UiScreenWidth)+((Right+1)*2)+1] = ATTR(COLOR_GRAY, COLOR_BLACK);
        }
    }
    if (UiScreenHeight < 34)
    {
        if ((Right + 1) < (UiScreenWidth - 1))
        {
            for (Idx=Top+1; Idx<=Bottom; Idx++)
            {
                ScreenMemory[((Idx*2)*UiScreenWidth)+((Right+2)*2)+1] = ATTR(COLOR_GRAY, COLOR_BLACK);
            }
        }
    }


    if ((Right < (UiScreenWidth - 1)) && (Bottom < (UiScreenHeight - 1)))
    {
        ScreenMemory[(((Bottom+1)*2)*UiScreenWidth)+((Right+1)*2)+1] = ATTR(COLOR_GRAY, COLOR_BLACK);
    }
    if (UiScreenHeight < 34)
    {
        if (((Right + 1) < (UiScreenWidth - 1)) && (Bottom < (UiScreenHeight - 1)))
        {
            ScreenMemory[(((Bottom+1)*2)*UiScreenWidth)+((Right+2)*2)+1] = ATTR(COLOR_GRAY, COLOR_BLACK);
        }
    }
}
