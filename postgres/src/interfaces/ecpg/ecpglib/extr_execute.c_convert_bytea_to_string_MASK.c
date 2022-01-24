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
 char* FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static char *
FUNC4(char *from_data, int from_len, int lineno)
{
	char	   *to_data;
	int			to_len = FUNC1(from_len) + 4 + 1;	/* backslash + 'x' +
																 * quote + quote */

	to_data = FUNC0(to_len, lineno);
	if (!to_data)
		return NULL;

	FUNC3(to_data, "'\\x");
	FUNC2(from_data, from_len, to_data + 3);
	FUNC3(to_data + 3 + FUNC1(from_len), "\'");

	return to_data;
}