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
typedef  int INT ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static INT FUNC1(const BYTE *ptr, const BYTE *end)
{
    int  i, newsize = 0;

    while (ptr < end)
    {
        int mask = *ptr++;
        for (i = 0; i < 8 && ptr < end; i++, mask >>= 1)
	{
            if (mask & 1)
	    {
                int code = FUNC0(ptr, 0);
                int len  = 3 + (code >> 12);
                newsize += len;
                ptr     += 2;
	    }
            else newsize++, ptr++;
	}
    }

    return newsize;
}