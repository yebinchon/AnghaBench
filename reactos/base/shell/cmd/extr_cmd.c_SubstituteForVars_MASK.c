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
typedef  scalar_t__ TCHAR ;
typedef  scalar_t__* LPTSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int CMDLINE_LENGTH ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__* FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC1 (scalar_t__**,scalar_t__* (*) (scalar_t__,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__* FUNC3 (scalar_t__*,scalar_t__*) ; 
 int FUNC4 (scalar_t__*) ; 

BOOL
FUNC5(TCHAR *Src, TCHAR *Dest)
{
    TCHAR *DestEnd = &Dest[CMDLINE_LENGTH - 1];
    while (*Src)
    {
        if (Src[0] == FUNC2('%'))
        {
            BOOL Dummy;
            LPTSTR End = &Src[2];
            LPTSTR Value = NULL;

            if (Src[1] == FUNC2('~'))
                Value = FUNC1(&End, FindForVar);

            if (!Value)
                Value = FUNC0(Src[1], &Dummy);

            if (Value)
            {
                if (Dest + FUNC4(Value) > DestEnd)
                    return FALSE;
                Dest = FUNC3(Dest, Value);
                Src = End;
                continue;
            }
        }
        /* Not a variable; just copy the character */
        if (Dest >= DestEnd)
            return FALSE;
        *Dest++ = *Src++;
    }
    *Dest = FUNC2('\0');
    return TRUE;
}