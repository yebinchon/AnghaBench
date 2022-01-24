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
typedef  int /*<<< orphan*/  bytea ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 double FUNC4 (unsigned char*,int,int,int) ; 

__attribute__((used)) static void
FUNC5(Datum value,
						double *scaledvalue,
						Datum lobound,
						double *scaledlobound,
						Datum hibound,
						double *scaledhibound)
{
	bytea	   *valuep = FUNC0(value);
	bytea	   *loboundp = FUNC0(lobound);
	bytea	   *hiboundp = FUNC0(hibound);
	int			rangelo,
				rangehi,
				valuelen = FUNC3(valuep),
				loboundlen = FUNC3(loboundp),
				hiboundlen = FUNC3(hiboundp),
				i,
				minlen;
	unsigned char *valstr = (unsigned char *) FUNC2(valuep);
	unsigned char *lostr = (unsigned char *) FUNC2(loboundp);
	unsigned char *histr = (unsigned char *) FUNC2(hiboundp);

	/*
	 * Assume bytea data is uniformly distributed across all byte values.
	 */
	rangelo = 0;
	rangehi = 255;

	/*
	 * Now strip any common prefix of the three strings.
	 */
	minlen = FUNC1(FUNC1(valuelen, loboundlen), hiboundlen);
	for (i = 0; i < minlen; i++)
	{
		if (*lostr != *histr || *lostr != *valstr)
			break;
		lostr++, histr++, valstr++;
		loboundlen--, hiboundlen--, valuelen--;
	}

	/*
	 * Now we can do the conversions.
	 */
	*scaledvalue = FUNC4(valstr, valuelen, rangelo, rangehi);
	*scaledlobound = FUNC4(lostr, loboundlen, rangelo, rangehi);
	*scaledhibound = FUNC4(histr, hiboundlen, rangelo, rangehi);
}