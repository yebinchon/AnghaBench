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

/* Variables and functions */
 char NUL ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,float) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(char *font, char *buf, int inPixels)
{
    int	    size;
    float   temp;

    *buf = '\0';

    if (inPixels)
    {
	FUNC1(font, 7, buf);
	if (*buf != NUL)
	{
	    size = FUNC0(buf);
	    FUNC2(buf, "%3d", size);
	}
    }
    else
    {
	FUNC1(font, 8, buf);
	if (*buf != NUL)
	{
	    size = FUNC0(buf);
	    temp = (float)size / 10.0;
	    size = temp;
	    if (buf[FUNC3(buf) - 1] == '0')
		FUNC2(buf, "%3d", size);
	    else
		FUNC2(buf, "%4.1f", temp);
	}
    }
}