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
 scalar_t__ FUNC0 (char const) ; 
 int MAXPGPATH ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 (char*) ; 

void
FUNC5(char *ret_path,
					 const char *head, const char *tail)
{
	if (ret_path != head)
		FUNC3(ret_path, head, MAXPGPATH);

	/*
	 * Remove any leading "." in the tail component.
	 *
	 * Note: we used to try to remove ".." as well, but that's tricky to get
	 * right; now we just leave it to be done by canonicalize_path() later.
	 */
	while (tail[0] == '.' && FUNC0(tail[1]))
		tail += 2;

	if (*tail)
	{
		/* only separate with slash if head wasn't empty */
		FUNC2(ret_path + FUNC4(ret_path), MAXPGPATH - FUNC4(ret_path),
				 "%s%s",
				 (*(FUNC1(head)) != '\0') ? "/" : "",
				 tail);
	}
}