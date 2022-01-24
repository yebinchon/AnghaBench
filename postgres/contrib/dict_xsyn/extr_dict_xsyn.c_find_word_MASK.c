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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 

__attribute__((used)) static char *
FUNC2(char *in, char **end)
{
	char	   *start;

	*end = NULL;
	while (*in && FUNC1(in))
		in += FUNC0(in);

	if (!*in || *in == '#')
		return NULL;
	start = in;

	while (*in && !FUNC1(in))
		in += FUNC0(in);

	*end = in;

	return start;
}