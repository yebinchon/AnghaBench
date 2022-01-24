#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int USHORT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_3__ {int WidthInPixels; int HeightInPixels; int BytesPerScanLine; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int BiosVideoMode ; 
 int BytesPerScanLine ; 
 scalar_t__ CurrentMemoryBank ; 
 int /*<<< orphan*/  DisplayMode ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int,TYPE_1__*) ; 
 int ScreenHeight ; 
 int ScreenWidth ; 
 int /*<<< orphan*/  TRUE ; 
#define  VIDEOMODE_80X28 134 
#define  VIDEOMODE_80X30 133 
#define  VIDEOMODE_80X34 132 
#define  VIDEOMODE_80X43 131 
#define  VIDEOMODE_80X60 130 
#define  VIDEOMODE_EXTENDED_TEXT 129 
#define  VIDEOMODE_NORMAL_TEXT 128 
 int /*<<< orphan*/  VesaVideoMode ; 
 TYPE_1__ VesaVideoModeInformation ; 
 int /*<<< orphan*/  VideoGraphicsMode ; 
 int /*<<< orphan*/  VideoTextMode ; 
 int /*<<< orphan*/  FUNC10 (int*,int) ; 

__attribute__((used)) static BOOLEAN
FUNC11(USHORT NewMode)
{
  CurrentMemoryBank = 0;

  /* Set the values for the default text modes
   * If they are setting a graphics mode then
   * these values will be changed.
   */
  BiosVideoMode = NewMode;
  ScreenWidth = 80;
  ScreenHeight = 25;
  BytesPerScanLine = 160;
  DisplayMode = VideoTextMode;
  VesaVideoMode = FALSE;

  switch (NewMode)
    {
      case VIDEOMODE_NORMAL_TEXT:
      case 0x03: /* BIOS 80x25 text mode number */
        return FUNC2();
      case VIDEOMODE_EXTENDED_TEXT:
        return FUNC7();
      case VIDEOMODE_80X28:
        return FUNC3();
      case VIDEOMODE_80X30:
        return FUNC4();
      case VIDEOMODE_80X34:
        return FUNC5();
      case VIDEOMODE_80X43:
        return FUNC6();
      case VIDEOMODE_80X60:
        return FUNC8();
   }

  if (0x12 == NewMode)
    {
      /* 640x480x16 */
      FUNC0((UCHAR)NewMode);
      FUNC10((USHORT*)0x03CE, 0x0F01); /* For some reason this is necessary? */
      ScreenWidth = 640;
      ScreenHeight = 480;
      BytesPerScanLine = 80;
      BiosVideoMode = NewMode;
      DisplayMode = VideoGraphicsMode;

      return TRUE;
    }
  else if (0x13 == NewMode)
    {
      /* 320x200x256 */
      FUNC0((UCHAR)NewMode);
      ScreenWidth = 320;
      ScreenHeight = 200;
      BytesPerScanLine = 320;
      BiosVideoMode = NewMode;
      DisplayMode = VideoGraphicsMode;

      return TRUE;
    }
  else if (0x0108 <= NewMode && NewMode <= 0x010C)
    {
      /* VESA Text Mode */
      if (! FUNC9(NewMode, &VesaVideoModeInformation))
        {
          return FALSE;
        }

      if (! FUNC1(NewMode))
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
      /* VESA Graphics Mode */
      if (! FUNC9(NewMode, &VesaVideoModeInformation))
        {
          return FALSE;
        }

      if (! FUNC1(NewMode))
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