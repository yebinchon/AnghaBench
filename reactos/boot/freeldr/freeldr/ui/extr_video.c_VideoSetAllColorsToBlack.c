
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ ULONG ;
typedef scalar_t__ UCHAR ;


 int MachVideoSetPaletteColor (scalar_t__,int ,int ,int ) ;
 int MachVideoSync () ;

VOID VideoSetAllColorsToBlack(ULONG ColorCount)
{
    UCHAR Color;

    MachVideoSync();

    for (Color = 0; Color < ColorCount; Color++)
    {
        MachVideoSetPaletteColor(Color, 0, 0, 0);
    }
}
