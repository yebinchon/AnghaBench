
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef size_t ULONG ;
typedef int UCHAR ;
struct TYPE_3__ {int Blue; int Green; int Red; } ;
typedef TYPE_1__* PPALETTE_ENTRY ;


 int MachVideoGetPaletteColor (int ,int *,int *,int *) ;

VOID VideoSavePaletteState(PPALETTE_ENTRY Palette, ULONG ColorCount)
{
    ULONG Color;

    for (Color = 0; Color < ColorCount; Color++)
    {
        MachVideoGetPaletteColor((UCHAR)Color, &Palette[Color].Red, &Palette[Color].Green, &Palette[Color].Blue);
    }
}
