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
typedef  char char_u ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 char* FUNC1 (int) ; 

char_u *
FUNC2(char_u *Cstring)
{
    char_u  *PascalString;
    int	    len;
    char_u  *p, *c;

    len = FUNC0(Cstring);

    if (len > 255) /* Truncate if necessary */
	len = 255;

    PascalString = FUNC1(len + 1);
    if (PascalString != NULL)
    {
	for (c = Cstring, p = PascalString+1, len = 0; (*c != 0) && (len < 255); c++)
	{
	    if ((*c == '\\') && (c[1] != 0))
	    {
		c++;
	    }
	    *p = *c;
	    p++;
	    len++;
	}
	PascalString[0] = len;
    }

    return PascalString;
}