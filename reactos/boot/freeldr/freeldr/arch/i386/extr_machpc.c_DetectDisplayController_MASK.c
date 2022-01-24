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
typedef  int /*<<< orphan*/  VOID ;
typedef  int USHORT ;
typedef  int /*<<< orphan*/  PCONFIGURATION_COMPONENT_DATA ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  ControllerClass ; 
 int /*<<< orphan*/  DisplayController ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static VOID
FUNC6(PCONFIGURATION_COMPONENT_DATA BusKey)
{
    CHAR Buffer[80];
    PCONFIGURATION_COMPONENT_DATA ControllerKey;
    USHORT VesaVersion;

    /* FIXME: Set 'ComponentInformation' value */

    VesaVersion = FUNC1();
    if (VesaVersion != 0)
    {
        FUNC4("VESA version %c.%c\n",
              (VesaVersion >> 8) + '0',
              (VesaVersion & 0xFF) + '0');
    }
    else
    {
        FUNC4("VESA not supported\n");
    }

    if (VesaVersion >= 0x0200)
    {
        FUNC5(Buffer, "VBE Display");
    }
    else
    {
        FUNC5(Buffer, "VGA Display");
    }

    FUNC3(BusKey,
                           ControllerClass,
                           DisplayController,
                           0x0,
                           0x0,
                           0xFFFFFFFF,
                           Buffer,
                           NULL,
                           0,
                           &ControllerKey);
    FUNC4("Created key: DisplayController\\0\n");

    /* FIXME: Add display peripheral (monitor) data */
    if (VesaVersion != 0)
    {
        if (FUNC0())
        {
            FUNC4("VESA/DDC supported!\n");
            if (FUNC2())
            {
                FUNC4("EDID data read successfully!\n");

            }
        }
    }
}