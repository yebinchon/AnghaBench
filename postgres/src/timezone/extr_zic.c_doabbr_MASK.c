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
typedef  scalar_t__ zic_t ;
struct zone {char* z_format; char z_format_specifier; scalar_t__ z_stdoff; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERCENT_Z_LEN_BOUND ; 
 char* FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char const*) ; 
 char* FUNC5 (char const*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 size_t FUNC7 (char*) ; 

__attribute__((used)) static size_t
FUNC8(char *abbr, struct zone const *zp, char const *letters,
	   bool isdst, zic_t save, bool doquotes)
{
	char	   *cp;
	char	   *slashp;
	size_t		len;
	char const *format = zp->z_format;

	slashp = FUNC5(format, '/');
	if (slashp == NULL)
	{
		char		letterbuf[PERCENT_Z_LEN_BOUND + 1];

		if (zp->z_format_specifier == 'z')
			letters = FUNC0(letterbuf, zp->z_stdoff + save);
		else if (!letters)
			letters = "%s";
		FUNC4(abbr, format, letters);
	}
	else if (isdst)
	{
		FUNC6(abbr, slashp + 1);
	}
	else
	{
		FUNC2(abbr, format, slashp - format);
		abbr[slashp - format] = '\0';
	}
	len = FUNC7(abbr);
	if (!doquotes)
		return len;
	for (cp = abbr; FUNC1(*cp); cp++)
		continue;
	if (len > 0 && *cp == '\0')
		return len;
	abbr[len + 2] = '\0';
	abbr[len + 1] = '>';
	FUNC3(abbr + 1, abbr, len);
	abbr[0] = '<';
	return len + 2;
}