
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_2__ {int BitsPerPixel; int GreenMaskSize; } ;
typedef int* PULONG ;


 scalar_t__ DisplayMode ;
 int ScreenHeight ;
 int ScreenWidth ;
 scalar_t__ VesaVideoMode ;
 TYPE_1__ VesaVideoModeInformation ;
 scalar_t__ VideoGraphicsMode ;

VOID
PcVideoGetDisplaySize(PULONG Width, PULONG Height, PULONG Depth)
{
  *Width = ScreenWidth;
  *Height = ScreenHeight;
  if (VideoGraphicsMode == DisplayMode && VesaVideoMode)
    {
      if (16 == VesaVideoModeInformation.BitsPerPixel)
        {


          *Depth = (6 == VesaVideoModeInformation.GreenMaskSize ? 16 : 15);
        }
      else
        {
          *Depth = VesaVideoModeInformation.BitsPerPixel;
        }
    }
  else
    {
      *Depth = 0;
    }
}
