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
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(Datum src,
				int typlen,
				bool typbyval,
				char typalign,
				char *dest)
{
	int			inc;

	if (typlen > 0)
	{
		if (typbyval)
			FUNC5(dest, src, typlen);
		else
			FUNC4(dest, FUNC1(src), typlen);
		inc = FUNC3(typlen, typalign);
	}
	else
	{
		FUNC0(!typbyval);
		inc = FUNC2(0, typlen, src);
		FUNC4(dest, FUNC1(src), inc);
		inc = FUNC3(inc, typalign);
	}

	return inc;
}