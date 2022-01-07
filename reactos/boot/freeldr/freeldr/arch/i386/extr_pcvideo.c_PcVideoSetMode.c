
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int USHORT ;
typedef int UCHAR ;
struct TYPE_3__ {int WidthInPixels; int HeightInPixels; int BytesPerScanLine; } ;
typedef int BOOLEAN ;


 int BiosVideoMode ;
 int BytesPerScanLine ;
 scalar_t__ CurrentMemoryBank ;
 int DisplayMode ;
 int FALSE ;
 int PcVideoSetBiosMode (int ) ;
 int PcVideoSetBiosVesaMode (int) ;
 int PcVideoSetMode80x25 () ;
 int PcVideoSetMode80x28 () ;
 int PcVideoSetMode80x30 () ;
 int PcVideoSetMode80x34 () ;
 int PcVideoSetMode80x43 () ;
 int PcVideoSetMode80x50_80x43 () ;
 int PcVideoSetMode80x60 () ;
 int PcVideoVesaGetSVGAModeInformation (int,TYPE_1__*) ;
 int ScreenHeight ;
 int ScreenWidth ;
 int TRUE ;







 int VesaVideoMode ;
 TYPE_1__ VesaVideoModeInformation ;
 int VideoGraphicsMode ;
 int VideoTextMode ;
 int WRITE_PORT_USHORT (int*,int) ;

__attribute__((used)) static BOOLEAN
PcVideoSetMode(USHORT NewMode)
{
  CurrentMemoryBank = 0;





  BiosVideoMode = NewMode;
  ScreenWidth = 80;
  ScreenHeight = 25;
  BytesPerScanLine = 160;
  DisplayMode = VideoTextMode;
  VesaVideoMode = FALSE;

  switch (NewMode)
    {
      case 128:
      case 0x03:
        return PcVideoSetMode80x25();
      case 129:
        return PcVideoSetMode80x50_80x43();
      case 134:
        return PcVideoSetMode80x28();
      case 133:
        return PcVideoSetMode80x30();
      case 132:
        return PcVideoSetMode80x34();
      case 131:
        return PcVideoSetMode80x43();
      case 130:
        return PcVideoSetMode80x60();
   }

  if (0x12 == NewMode)
    {

      PcVideoSetBiosMode((UCHAR)NewMode);
      WRITE_PORT_USHORT((USHORT*)0x03CE, 0x0F01);
      ScreenWidth = 640;
      ScreenHeight = 480;
      BytesPerScanLine = 80;
      BiosVideoMode = NewMode;
      DisplayMode = VideoGraphicsMode;

      return TRUE;
    }
  else if (0x13 == NewMode)
    {

      PcVideoSetBiosMode((UCHAR)NewMode);
      ScreenWidth = 320;
      ScreenHeight = 200;
      BytesPerScanLine = 320;
      BiosVideoMode = NewMode;
      DisplayMode = VideoGraphicsMode;

      return TRUE;
    }
  else if (0x0108 <= NewMode && NewMode <= 0x010C)
    {

      if (! PcVideoVesaGetSVGAModeInformation(NewMode, &VesaVideoModeInformation))
        {
          return FALSE;
        }

      if (! PcVideoSetBiosVesaMode(NewMode))
        {
          return FALSE;
        }

      ScreenWidth = VesaVideoModeInformation.WidthInPixels;
      ScreenHeight = VesaVideoModeInformation.HeightInPixels;
      BytesPerScanLine = VesaVideoModeInformation.BytesPerScanLine;
      BiosVideoMode = NewMode;
      DisplayMode = VideoTextMode;
      VesaVideoMode = TRUE;

      return TRUE;
    }
  else
    {

      if (! PcVideoVesaGetSVGAModeInformation(NewMode, &VesaVideoModeInformation))
        {
          return FALSE;
        }

      if (! PcVideoSetBiosVesaMode(NewMode))
        {
          return FALSE;
        }

      ScreenWidth = VesaVideoModeInformation.WidthInPixels;
      ScreenHeight = VesaVideoModeInformation.HeightInPixels;
      BytesPerScanLine = VesaVideoModeInformation.BytesPerScanLine;
      BiosVideoMode = NewMode;
      DisplayMode = VideoGraphicsMode;
      VesaVideoMode = TRUE;

      return TRUE;
    }

  return FALSE;
}
