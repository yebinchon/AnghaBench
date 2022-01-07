
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int UCHAR ;


 int READ_PORT_UCHAR (int *) ;
 scalar_t__ VIDEOPORT_PALETTE_DATA ;
 scalar_t__ VIDEOPORT_PALETTE_READ ;
 int WRITE_PORT_UCHAR (int *,int ) ;

VOID
PcVideoGetPaletteColor(UCHAR Color, UCHAR* Red, UCHAR* Green, UCHAR* Blue)
{
  WRITE_PORT_UCHAR((UCHAR*) VIDEOPORT_PALETTE_READ, Color);
  *Red = READ_PORT_UCHAR((UCHAR*) VIDEOPORT_PALETTE_DATA);
  *Green = READ_PORT_UCHAR((UCHAR*) VIDEOPORT_PALETTE_DATA);
  *Blue = READ_PORT_UCHAR((UCHAR*) VIDEOPORT_PALETTE_DATA);
}
