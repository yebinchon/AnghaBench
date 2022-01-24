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
typedef  int /*<<< orphan*/  utf8string ;
typedef  int /*<<< orphan*/  pg_wchar ;

/* Variables and functions */
 int /*<<< orphan*/  PG_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char*) ; 

__attribute__((used)) static char *
FUNC5(pg_wchar c)
{
	char		utf8string[8];	/* need room for trailing zero */
	char	   *result;

	FUNC0(utf8string, 0, sizeof(utf8string));
	FUNC4(c, (unsigned char *) utf8string);

	result = FUNC1(utf8string, FUNC3(utf8string), PG_UTF8);
	/* if pg_any_to_server didn't strdup, we must */
	if (result == utf8string)
		result = FUNC2(result);
	return result;
}