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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  size_t Size ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,int,int) ; 

void
FUNC6(StringInfo str, Datum value, int typlen, bool typbyval)
{
	Size		length,
				i;
	char	   *s;

	length = FUNC5(value, typbyval, typlen);

	if (typbyval)
	{
		s = (char *) (&value);
		FUNC2(str, "%u [ ", (unsigned int) length);
		for (i = 0; i < (Size) sizeof(Datum); i++)
			FUNC2(str, "%d ", (int) (s[i]));
		FUNC3(str, ']');
	}
	else
	{
		s = (char *) FUNC0(value);
		if (!FUNC1(s))
			FUNC4(str, "0 [ ]");
		else
		{
			FUNC2(str, "%u [ ", (unsigned int) length);
			for (i = 0; i < length; i++)
				FUNC2(str, "%d ", (int) (s[i]));
			FUNC3(str, ']');
		}
	}
}