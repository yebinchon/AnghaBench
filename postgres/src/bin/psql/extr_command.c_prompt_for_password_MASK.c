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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int) ; 

__attribute__((used)) static char *
FUNC5(const char *username)
{
	char		buf[100];

	if (username == NULL || username[0] == '\0')
		FUNC4("Password: ", buf, sizeof(buf), false);
	else
	{
		char	   *prompt_text;

		prompt_text = FUNC3(FUNC0("Password for user %s: "), username);
		FUNC4(prompt_text, buf, sizeof(buf), false);
		FUNC1(prompt_text);
	}
	return FUNC2(buf);
}