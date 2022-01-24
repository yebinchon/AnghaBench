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
typedef  int /*<<< orphan*/  GucSource ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (char*,char*) ; 

__attribute__((used)) static bool
FUNC4(char **newval, void **extra, GucSource source)
{
	int			newvallen = FUNC2(*newval);
	char	   *someval;
	int			validlen;
	int			i;
	int			j;

	/*
	 * Allow characters that can be C identifiers and commas as separators, as
	 * well as some whitespace for readability.
	 */
	validlen = FUNC3(*newval,
					  "0123456789_"
					  "abcdefghijklmnopqrstuvwxyz"
					  "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
					  ", \n\t");
	if (validlen != newvallen)
	{
		FUNC0("invalid character");
		return false;
	}

	if (*newval[0] == '\0')
	{
		*extra = NULL;
		return true;
	}

	/*
	 * Allocate space for the output and create the copy.  We could discount
	 * whitespace chars to save some memory, but it doesn't seem worth the
	 * trouble.
	 */
	someval = FUNC1(ERROR, newvallen + 1 + 1);
	for (i = 0, j = 0; i < newvallen; i++)
	{
		if ((*newval)[i] == ',')
			someval[j++] = '\0';	/* next item */
		else if ((*newval)[i] == ' ' ||
				 (*newval)[i] == '\n' ||
				 (*newval)[i] == '\t')
			;	/* ignore these */
		else
			someval[j++] = (*newval)[i];	/* copy anything else */
	}

	/* two \0s end the setting */
	someval[j] = '\0';
	someval[j + 1] = '\0';

	*extra = someval;
	return true;
}