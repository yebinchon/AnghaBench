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
typedef  int /*<<< orphan*/  _stringlist ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char*,char const*) ; 

__attribute__((used)) static void
FUNC4(const char *s, const char *delim, _stringlist **listhead)
{
	char	   *sc = FUNC2(s);
	char	   *token = FUNC3(sc, delim);

	while (token)
	{
		FUNC0(listhead, token);
		token = FUNC3(NULL, delim);
	}
	FUNC1(sc);
}