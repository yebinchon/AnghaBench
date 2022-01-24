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
typedef  int /*<<< orphan*/  TupOutputState ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char const*,char) ; 
 int FUNC6 (char const*) ; 

void
FUNC7(TupOutputState *tstate, const char *txt)
{
	Datum		values[1];
	bool		isnull[1] = {false};

	while (*txt)
	{
		const char *eol;
		int			len;

		eol = FUNC5(txt, '\n');
		if (eol)
		{
			len = eol - txt;
			eol++;
		}
		else
		{
			len = FUNC6(txt);
			eol = txt + len;
		}

		values[0] = FUNC1(FUNC2(txt, len));
		FUNC3(tstate, values, isnull);
		FUNC4(FUNC0(values[0]));
		txt = eol;
	}
}