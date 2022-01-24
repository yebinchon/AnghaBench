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
typedef  int /*<<< orphan*/  SV ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ PG_SQL_ASCII ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static inline SV *
FUNC5(const char *str)
{
	dTHX;
	SV		   *sv;
	char	   *utf8_str;

	/* no conversion when SQL_ASCII */
	if (FUNC0() == PG_SQL_ASCII)
		return FUNC2(str, 0);

	utf8_str = FUNC4(str);

	sv = FUNC2(utf8_str, 0);
	FUNC1(sv);
	FUNC3(utf8_str);

	return sv;
}