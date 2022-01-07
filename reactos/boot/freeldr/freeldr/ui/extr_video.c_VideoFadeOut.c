
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ ULONG ;
typedef scalar_t__ UCHAR ;


 int MachVideoGetPaletteColor (scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int MachVideoSetPaletteColor (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int MachVideoSync () ;
 scalar_t__ RGB_MAX ;
 scalar_t__ RGB_MAX_PER_ITERATION ;

VOID VideoFadeOut(ULONG ColorCount)
{
    ULONG Index;
    UCHAR Color;
    UCHAR Red;
    UCHAR Green;
    UCHAR Blue;

    for (Index = 0; Index < RGB_MAX; Index++)
    {
        for (Color = 0; Color < ColorCount; Color++)
        {
            if ((Color % RGB_MAX_PER_ITERATION) == 0)
            {
                MachVideoSync();
            }

            MachVideoGetPaletteColor(Color, &Red, &Green, &Blue);

            if (Red > 0)
            {
                Red--;
            }
            if (Green > 0)
            {
                Green--;
            }
            if (Blue > 0)
            {
                Blue--;
            }

            MachVideoSetPaletteColor(Color, Red, Green, Blue);
        }
    }
}
