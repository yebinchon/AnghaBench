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
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (char const*) ; 

char *
FUNC4(const char *s)
{
	char	   *newStr;
	int			len,
				i,
				j;

	if (s == NULL || s[0] == '\0')
		return FUNC2("");

	len = FUNC3(s);

	newStr = FUNC1(len + 1);	/* string cannot get longer */

	for (i = 0, j = 0; i < len; i++)
	{
		if (s[i] == '\'')
		{
			/*
			 * Note: if scanner is working right, unescaped quotes can only
			 * appear in pairs, so there should be another character.
			 */
			i++;
			/* The bootstrap parser is not as smart, so check here. */
			FUNC0(s[i] == '\'');
			newStr[j] = s[i];
		}
		else if (s[i] == '\\')
		{
			i++;
			switch (s[i])
			{
				case 'b':
					newStr[j] = '\b';
					break;
				case 'f':
					newStr[j] = '\f';
					break;
				case 'n':
					newStr[j] = '\n';
					break;
				case 'r':
					newStr[j] = '\r';
					break;
				case 't':
					newStr[j] = '\t';
					break;
				case '0':
				case '1':
				case '2':
				case '3':
				case '4':
				case '5':
				case '6':
				case '7':
					{
						int			k;
						long		octVal = 0;

						for (k = 0;
							 s[i + k] >= '0' && s[i + k] <= '7' && k < 3;
							 k++)
							octVal = (octVal << 3) + (s[i + k] - '0');
						i += k - 1;
						newStr[j] = ((char) octVal);
					}
					break;
				default:
					newStr[j] = s[i];
					break;
			}					/* switch */
		}						/* s[i] == '\\' */
		else
			newStr[j] = s[i];
		j++;
	}
	newStr[j] = '\0';
	return newStr;
}