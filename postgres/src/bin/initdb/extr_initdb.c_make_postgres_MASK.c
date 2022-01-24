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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const* const) ; 

__attribute__((used)) static void
FUNC1(FILE *cmdfd)
{
	const char *const *line;
	static const char *const postgres_setup[] = {
		"CREATE DATABASE postgres;\n\n",
		"COMMENT ON DATABASE postgres IS 'default administrative connection database';\n\n",
		NULL
	};

	for (line = postgres_setup; *line; line++)
		FUNC0(*line);
}