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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char const*,int /*<<< orphan*/ ) ; 

int FUNC4(char * string, const char * token, const char * fmt, va_list args)
{
	char data[64];
	char * pos;

	pos = FUNC2(string, token);
	if (!pos) {
		return 0;
	}

	FUNC3(data, sizeof(data), fmt, args);

	FUNC0(pos + FUNC1(data), pos + FUNC1(token), FUNC1(pos + FUNC1(token)) + 1);
	FUNC0(pos, data, FUNC1(data));

	return 1;
}