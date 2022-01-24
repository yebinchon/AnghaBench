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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char NUL ; 
 char TAB ; 
 char* FUNC2 (unsigned int) ; 

__attribute__((used)) static char_u *
FUNC3(char_u *name, int use_mnemonic)
{
    char_u  *buf;
    char_u  *psrc;
    char_u  *pdest;
    int	    n_underscores = 0;

    name = FUNC0(name);
    if (name == NULL)
	return NULL;

    for (psrc = name; *psrc != NUL && *psrc != TAB; ++psrc)
	if (*psrc == '_')
	    ++n_underscores;

    buf = FUNC2((unsigned)(psrc - name + n_underscores + 1));
    if (buf != NULL)
    {
	pdest = buf;
	for (psrc = name; *psrc != NUL && *psrc != TAB; ++psrc)
	{
	    if (*psrc == '_')
	    {
		*pdest++ = '_';
		*pdest++ = '_';
	    }
	    else if (*psrc != '&')
	    {
		*pdest++ = *psrc;
	    }
	    else if (*(psrc + 1) == '&')
	    {
		*pdest++ = *psrc++;
	    }
	    else if (use_mnemonic)
	    {
		*pdest++ = '_';
	    }
	}
	*pdest = NUL;
    }

    FUNC1(name);
    return buf;
}