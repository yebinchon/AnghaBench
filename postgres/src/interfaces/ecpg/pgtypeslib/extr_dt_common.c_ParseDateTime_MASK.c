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
 int DTK_DATE ; 
 int DTK_NUMBER ; 
 int DTK_SPECIAL ; 
 int DTK_STRING ; 
 int DTK_TIME ; 
 int DTK_TZ ; 
 int MAXDATEFIELDS ; 
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 void* FUNC5 (unsigned char) ; 

int
FUNC6(char *timestr, char *lowstr,
			  char **field, int *ftype, int *numfields, char **endstr)
{
	int			nf = 0;
	char	   *lp = lowstr;

	*endstr = timestr;
	/* outer loop through fields */
	while (*(*endstr) != '\0')
	{
		/* Record start of current field */
		if (nf >= MAXDATEFIELDS)
			return -1;
		field[nf] = lp;

		/* leading digit? then date or time */
		if (FUNC2((unsigned char) *(*endstr)))
		{
			*lp++ = *(*endstr)++;
			while (FUNC2((unsigned char) *(*endstr)))
				*lp++ = *(*endstr)++;

			/* time field? */
			if (*(*endstr) == ':')
			{
				ftype[nf] = DTK_TIME;
				*lp++ = *(*endstr)++;
				while (FUNC2((unsigned char) *(*endstr)) ||
					   (*(*endstr) == ':') || (*(*endstr) == '.'))
					*lp++ = *(*endstr)++;
			}
			/* date field? allow embedded text month */
			else if (*(*endstr) == '-' || *(*endstr) == '/' || *(*endstr) == '.')
			{
				/* save delimiting character to use later */
				char	   *dp = (*endstr);

				*lp++ = *(*endstr)++;
				/* second field is all digits? then no embedded text month */
				if (FUNC2((unsigned char) *(*endstr)))
				{
					ftype[nf] = (*dp == '.') ? DTK_NUMBER : DTK_DATE;
					while (FUNC2((unsigned char) *(*endstr)))
						*lp++ = *(*endstr)++;

					/*
					 * insist that the delimiters match to get a three-field
					 * date.
					 */
					if (*(*endstr) == *dp)
					{
						ftype[nf] = DTK_DATE;
						*lp++ = *(*endstr)++;
						while (FUNC2((unsigned char) *(*endstr)) || (*(*endstr) == *dp))
							*lp++ = *(*endstr)++;
					}
				}
				else
				{
					ftype[nf] = DTK_DATE;
					while (FUNC0((unsigned char) *(*endstr)) || (*(*endstr) == *dp))
						*lp++ = FUNC5((unsigned char) *(*endstr)++);
				}
			}

			/*
			 * otherwise, number only and will determine year, month, day, or
			 * concatenated fields later...
			 */
			else
				ftype[nf] = DTK_NUMBER;
		}
		/* Leading decimal point? Then fractional seconds... */
		else if (*(*endstr) == '.')
		{
			*lp++ = *(*endstr)++;
			while (FUNC2((unsigned char) *(*endstr)))
				*lp++ = *(*endstr)++;

			ftype[nf] = DTK_NUMBER;
		}

		/*
		 * text? then date string, month, day of week, special, or timezone
		 */
		else if (FUNC1((unsigned char) *(*endstr)))
		{
			ftype[nf] = DTK_STRING;
			*lp++ = FUNC5((unsigned char) *(*endstr)++);
			while (FUNC1((unsigned char) *(*endstr)))
				*lp++ = FUNC5((unsigned char) *(*endstr)++);

			/*
			 * Full date string with leading text month? Could also be a POSIX
			 * time zone...
			 */
			if (*(*endstr) == '-' || *(*endstr) == '/' || *(*endstr) == '.')
			{
				char	   *dp = (*endstr);

				ftype[nf] = DTK_DATE;
				*lp++ = *(*endstr)++;
				while (FUNC2((unsigned char) *(*endstr)) || *(*endstr) == *dp)
					*lp++ = *(*endstr)++;
			}
		}
		/* skip leading spaces */
		else if (FUNC4((unsigned char) *(*endstr)))
		{
			(*endstr)++;
			continue;
		}
		/* sign? then special or numeric timezone */
		else if (*(*endstr) == '+' || *(*endstr) == '-')
		{
			*lp++ = *(*endstr)++;
			/* soak up leading whitespace */
			while (FUNC4((unsigned char) *(*endstr)))
				(*endstr)++;
			/* numeric timezone? */
			if (FUNC2((unsigned char) *(*endstr)))
			{
				ftype[nf] = DTK_TZ;
				*lp++ = *(*endstr)++;
				while (FUNC2((unsigned char) *(*endstr)) ||
					   (*(*endstr) == ':') || (*(*endstr) == '.'))
					*lp++ = *(*endstr)++;
			}
			/* special? */
			else if (FUNC1((unsigned char) *(*endstr)))
			{
				ftype[nf] = DTK_SPECIAL;
				*lp++ = FUNC5((unsigned char) *(*endstr)++);
				while (FUNC1((unsigned char) *(*endstr)))
					*lp++ = FUNC5((unsigned char) *(*endstr)++);
			}
			/* otherwise something wrong... */
			else
				return -1;
		}
		/* ignore punctuation but use as delimiter */
		else if (FUNC3((unsigned char) *(*endstr)))
		{
			(*endstr)++;
			continue;

		}
		/* otherwise, something is not right... */
		else
			return -1;

		/* force in a delimiter after each field */
		*lp++ = '\0';
		nf++;
	}

	*numfields = nf;

	return 0;
}