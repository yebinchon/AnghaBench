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
typedef  scalar_t__ txid ;
typedef  int /*<<< orphan*/  TxidSnapshot ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_TEXT_REPRESENTATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*) ; 
 scalar_t__ FUNC6 (char const*,char const**) ; 

__attribute__((used)) static TxidSnapshot *
FUNC7(const char *str)
{
	txid		xmin;
	txid		xmax;
	txid		last_val = 0,
				val;
	const char *str_start = str;
	const char *endp;
	StringInfo	buf;

	xmin = FUNC6(str, &endp);
	if (*endp != ':')
		goto bad_format;
	str = endp + 1;

	xmax = FUNC6(str, &endp);
	if (*endp != ':')
		goto bad_format;
	str = endp + 1;

	/* it should look sane */
	if (xmin == 0 || xmax == 0 || xmin > xmax)
		goto bad_format;

	/* allocate buffer */
	buf = FUNC2(xmin, xmax);

	/* loop over values */
	while (*str != '\0')
	{
		/* read next value */
		val = FUNC6(str, &endp);
		str = endp;

		/* require the input to be in order */
		if (val < xmin || val >= xmax || val < last_val)
			goto bad_format;

		/* skip duplicates */
		if (val != last_val)
			FUNC0(buf, val);
		last_val = val;

		if (*str == ',')
			str++;
		else if (*str != '\0')
			goto bad_format;
	}

	return FUNC1(buf);

bad_format:
	FUNC3(ERROR,
			(FUNC4(ERRCODE_INVALID_TEXT_REPRESENTATION),
			 FUNC5("invalid input syntax for type %s: \"%s\"",
					"txid_snapshot", str_start)));
	return NULL;				/* keep compiler quiet */
}