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
typedef  scalar_t__ PUCHAR ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static ULONG
FUNC3(PUCHAR Port, char *Buffer)
{
    ULONG TimeOut;
    ULONG i = 0;
    char c;
    char x;

    FUNC2(Port + 4, 0x09);

    /* Wait 10 milliseconds for the mouse getting ready */
    FUNC1(10000);

    FUNC2(Port + 4, 0x0b);

    FUNC1(10000);

    for (;;)
    {
        TimeOut = 200;
        while (((FUNC0(Port + 5) & 1) == 0) && (TimeOut > 0))
        {
            FUNC1(1000);
            --TimeOut;
            if (TimeOut == 0)
            {
                return 0;
            }
        }

        c = FUNC0(Port);
        if (c == 0x08 || c == 0x28)
            break;
    }

    Buffer[i++] = c;
    x = c + 1;

    for (;;)
    {
        TimeOut = 200;
        while (((FUNC0(Port + 5) & 1) == 0) && (TimeOut > 0))
        {
            FUNC1(1000);
            --TimeOut;
            if (TimeOut == 0)
                return 0;
        }
        c = FUNC0(Port);
        Buffer[i++] = c;
        if (c == x)
            break;
        if (i >= 256)
            break;
    }

    return i;
}