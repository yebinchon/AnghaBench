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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static void
FUNC6(char *path, char **lines)
{
	FILE	   *out_file;
	char	  **line;

	if ((out_file = FUNC2(path, "w")) == NULL)
	{
		FUNC5("could not open file \"%s\" for writing: %m", path);
		FUNC0(1);
	}
	for (line = lines; *line != NULL; line++)
	{
		if (FUNC3(*line, out_file) < 0)
		{
			FUNC5("could not write file \"%s\": %m", path);
			FUNC0(1);
		}
		FUNC4(*line);
	}
	if (FUNC1(out_file))
	{
		FUNC5("could not write file \"%s\": %m", path);
		FUNC0(1);
	}
}