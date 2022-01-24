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
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 

__attribute__((used)) static void
FUNC1(char *p, const char *s)
{
	const char *src;
	bool		safe = true;

	for (src = s; *src; src++)
	{
		/* This test had better match what getid() does, above */
		if (!FUNC0((unsigned char) *src) && *src != '_')
		{
			safe = false;
			break;
		}
	}
	if (!safe)
		*p++ = '"';
	for (src = s; *src; src++)
	{
		/* A double quote character in a username is encoded as "" */
		if (*src == '"')
			*p++ = '"';
		*p++ = *src;
	}
	if (!safe)
		*p++ = '"';
	*p = '\0';
}