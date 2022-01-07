
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int UCHAR ;


 scalar_t__ VIDEOPORT_PALETTE_DATA ;
 scalar_t__ VIDEOPORT_PALETTE_WRITE ;
 int WRITE_PORT_UCHAR (int *,int ) ;

VOID
PcVideoSetPaletteColor(UCHAR Color, UCHAR Red, UCHAR Green, UCHAR Blue)
{
  WRITE_PORT_UCHAR((UCHAR*) VIDEOPORT_PALETTE_WRITE, Color);
  WRITE_PORT_UCHAR((UCHAR*) VIDEOPORT_PALETTE_DATA, Red);
  WRITE_PORT_UCHAR((UCHAR*) VIDEOPORT_PALETTE_DATA, Green);
  WRITE_PORT_UCHAR((UCHAR*) VIDEOPORT_PALETTE_DATA, Blue);
}
