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
typedef  int ULONG ;
typedef  int UCHAR ;
typedef  scalar_t__ PUCHAR ;
typedef  char CHAR ;

/* Variables and functions */
 int MOUSE_TYPE_LOGITECH ; 
 int MOUSE_TYPE_MICROSOFT ; 
 int MOUSE_TYPE_NONE ; 
 int MOUSE_TYPE_WHEELZ ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static
ULONG
FUNC4(PUCHAR Port)
{
    CHAR Buffer[4];
    ULONG i;
    ULONG TimeOut;
    UCHAR LineControl;

    /* Shutdown mouse or something like that */
    LineControl = FUNC0(Port + 4);
    FUNC3(Port + 4, (LineControl & ~0x02) | 0x01);
    FUNC1(100000);

    /*
     * Clear buffer
     * Maybe there is no serial port although BIOS reported one (this
     * is the case on Apple hardware), or the serial port is misbehaving,
     * therefore we must give up after some time.
     */
    TimeOut = 200;
    while (FUNC0(Port + 5) & 0x01)
    {
        if (--TimeOut == 0)
            return MOUSE_TYPE_NONE;
        FUNC0(Port);
    }

    /*
     * Send modem control with 'Data Terminal Ready', 'Request To Send' and
     * 'Output Line 2' message. This enables mouse to identify.
     */
    FUNC3(Port + 4, 0x0b);

    /* Wait 10 milliseconds for the mouse getting ready */
    FUNC1(10000);

    /* Read first four bytes, which contains Microsoft Mouse signs */
    TimeOut = 20;
    for (i = 0; i < 4; i++)
    {
        while ((FUNC0(Port + 5) & 1) == 0)
        {
            FUNC1(100);
            --TimeOut;
            if (TimeOut == 0)
                return MOUSE_TYPE_NONE;
        }
        Buffer[i] = FUNC0(Port);
    }

    FUNC2("Mouse data: %x %x %x %x\n",
          Buffer[0], Buffer[1], Buffer[2], Buffer[3]);

    /* Check that four bytes for signs */
    for (i = 0; i < 4; ++i)
    {
        if (Buffer[i] == 'B')
        {
            /* Sign for Microsoft Ballpoint */
//      DbgPrint("Microsoft Ballpoint device detected\n");
//      DbgPrint("THIS DEVICE IS NOT SUPPORTED, YET\n");
            return MOUSE_TYPE_NONE;
        }
        else if (Buffer[i] == 'M')
        {
            /* Sign for Microsoft Mouse protocol followed by button specifier */
            if (i == 3)
            {
                /* Overflow Error */
                return MOUSE_TYPE_NONE;
            }

            switch (Buffer[i + 1])
            {
            case '3':
                FUNC2("Microsoft Mouse with 3-buttons detected\n");
                return MOUSE_TYPE_LOGITECH;

            case 'Z':
                FUNC2("Microsoft Wheel Mouse detected\n");
                return MOUSE_TYPE_WHEELZ;

                /* case '2': */
            default:
                FUNC2("Microsoft Mouse with 2-buttons detected\n");
                return MOUSE_TYPE_MICROSOFT;
            }
        }
    }

    return MOUSE_TYPE_NONE;
}