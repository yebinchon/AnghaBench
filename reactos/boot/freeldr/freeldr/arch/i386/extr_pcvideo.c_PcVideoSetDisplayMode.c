
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VIDEODISPLAYMODE ;
typedef scalar_t__ USHORT ;
typedef int BOOLEAN ;


 int DisplayMode ;
 int PcConsGetCh () ;
 scalar_t__ PcVideoDetectVideoCard () ;
 int PcVideoSetBlinkBit (int) ;
 int PcVideoSetMode (scalar_t__) ;
 int TRACE (char*) ;
 scalar_t__ VIDEOCARD_CGA_OR_OTHER ;
 scalar_t__ VIDEOCARD_EGA ;
 scalar_t__ VIDEOMODE_EXTENDED_TEXT ;
 scalar_t__ VIDEOMODE_NORMAL_TEXT ;
 scalar_t__ _stricmp (char*,char*) ;
 int printf (char*,...) ;
 scalar_t__ strtoul (char*,int *,int ) ;

VIDEODISPLAYMODE
PcVideoSetDisplayMode(char *DisplayModeName, BOOLEAN Init)
{
  USHORT VideoMode = VIDEOMODE_NORMAL_TEXT;

  if (((void*)0) == DisplayModeName || '\0' == *DisplayModeName)
    {
      PcVideoSetBlinkBit(! Init);
      return DisplayMode;
    }

  if (VIDEOCARD_CGA_OR_OTHER == PcVideoDetectVideoCard())
    {
      TRACE("CGA or other display adapter detected.\n");
      printf("CGA or other display adapter detected.\n");
      printf("Using 80x25 text mode.\n");
      VideoMode = VIDEOMODE_NORMAL_TEXT;
    }
  else if (VIDEOCARD_EGA == PcVideoDetectVideoCard())
    {
      TRACE("EGA display adapter detected.\n");
      printf("EGA display adapter detected.\n");
      printf("Using 80x25 text mode.\n");
      VideoMode = VIDEOMODE_NORMAL_TEXT;
    }
  else
    {
      TRACE("VGA display adapter detected.\n");

      if (0 == _stricmp(DisplayModeName, "NORMAL_VGA"))
        {
          VideoMode = VIDEOMODE_NORMAL_TEXT;
        }
      else if (0 == _stricmp(DisplayModeName, "EXTENDED_VGA"))
        {
          VideoMode = VIDEOMODE_EXTENDED_TEXT;
        }
      else
        {
          VideoMode = (USHORT)strtoul(DisplayModeName, ((void*)0), 0);
        }
    }

  if (! PcVideoSetMode(VideoMode))
    {
      printf("Error: unable to set video display mode 0x%x\n", (int) VideoMode);
      printf("Defaulting to 80x25 text mode.\n");
      printf("Press any key to continue.\n");
      PcConsGetCh();

      PcVideoSetMode(VIDEOMODE_NORMAL_TEXT);
    }

  PcVideoSetBlinkBit(! Init);

  return DisplayMode;
}
