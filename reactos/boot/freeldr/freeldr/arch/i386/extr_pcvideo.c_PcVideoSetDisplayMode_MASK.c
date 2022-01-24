#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  VIDEODISPLAYMODE ;
typedef  scalar_t__ USHORT ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  DisplayMode ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ VIDEOCARD_CGA_OR_OTHER ; 
 scalar_t__ VIDEOCARD_EGA ; 
 scalar_t__ VIDEOMODE_EXTENDED_TEXT ; 
 scalar_t__ VIDEOMODE_NORMAL_TEXT ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

VIDEODISPLAYMODE
FUNC8(char *DisplayModeName, BOOLEAN Init)
{
  USHORT VideoMode = VIDEOMODE_NORMAL_TEXT;

  if (NULL == DisplayModeName || '\0' == *DisplayModeName)
    {
      FUNC2(! Init);
      return DisplayMode;
    }

  if (VIDEOCARD_CGA_OR_OTHER == FUNC1())
    {
      FUNC4("CGA or other display adapter detected.\n");
      FUNC6("CGA or other display adapter detected.\n");
      FUNC6("Using 80x25 text mode.\n");
      VideoMode = VIDEOMODE_NORMAL_TEXT;
    }
  else if (VIDEOCARD_EGA == FUNC1())
    {
      FUNC4("EGA display adapter detected.\n");
      FUNC6("EGA display adapter detected.\n");
      FUNC6("Using 80x25 text mode.\n");
      VideoMode = VIDEOMODE_NORMAL_TEXT;
    }
  else /* if (VIDEOCARD_VGA == PcVideoDetectVideoCard()) */
    {
      FUNC4("VGA display adapter detected.\n");

      if (0 == FUNC5(DisplayModeName, "NORMAL_VGA"))
        {
          VideoMode = VIDEOMODE_NORMAL_TEXT;
        }
      else if (0 == FUNC5(DisplayModeName, "EXTENDED_VGA"))
        {
          VideoMode = VIDEOMODE_EXTENDED_TEXT;
        }
      else
        {
          VideoMode = (USHORT)FUNC7(DisplayModeName, NULL, 0);
        }
    }

  if (! FUNC3(VideoMode))
    {
      FUNC6("Error: unable to set video display mode 0x%x\n", (int) VideoMode);
      FUNC6("Defaulting to 80x25 text mode.\n");
      FUNC6("Press any key to continue.\n");
      FUNC0();

      FUNC3(VIDEOMODE_NORMAL_TEXT);
    }

  FUNC2(! Init);

  return DisplayMode;
}