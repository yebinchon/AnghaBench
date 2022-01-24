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
 char* FUNC0 (char*,char*) ; 
 char* FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

int FUNC4(char *buf) {
	char *path;
{
	path = "glossary.title";
	char *s= FUNC1 (buf, path, "patata");
	if (s) {
		FUNC3 ("%s\n", s);
		FUNC2 (s);
	} else FUNC3 ("set failed\n");
}
{
	path = "glossary.title";
	char *s= FUNC0 (buf, path);
	if (s) {
		FUNC3 ("%s\n", s);
		FUNC2 (s);
	} else FUNC3 ("set failed\n");
}
{
	path = "glossary.title";
	char *s= FUNC0 (buf, path);
	if (s) {
		FUNC3 ("%s\n", s);
		FUNC2 (s);
	} else FUNC3 ("set failed\n");
}
return 0;
}