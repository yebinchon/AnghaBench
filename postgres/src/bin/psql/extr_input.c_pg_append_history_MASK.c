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
typedef  int /*<<< orphan*/  PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ useHistory ; 

void
FUNC3(const char *s, PQExpBuffer history_buf)
{
#ifdef USE_READLINE
	if (useHistory && s)
	{
		appendPQExpBufferStr(history_buf, s);
		if (!s[0] || s[strlen(s) - 1] != '\n')
			appendPQExpBufferChar(history_buf, '\n');
	}
#endif
}