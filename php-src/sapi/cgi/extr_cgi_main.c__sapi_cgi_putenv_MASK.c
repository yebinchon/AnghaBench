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
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 size_t FUNC4 (char*,size_t,char*,char*,...) ; 
 size_t FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static char *FUNC7(char *name, size_t name_len, char *value)
{
#if !HAVE_SETENV || !HAVE_UNSETENV
	size_t len;
	char *buf;
#endif

#if HAVE_SETENV
	if (value) {
		setenv(name, value, 1);
	}
#endif
#if HAVE_UNSETENV
	if (!value) {
		unsetenv(name);
	}
#endif

#if !HAVE_SETENV || !HAVE_UNSETENV
	/*  if cgi, or fastcgi and not found in fcgi env
		check the regular environment
		this leaks, but it's only cgi anyway, we'll fix
		it for 5.0
	*/
	len = name_len + (value ? FUNC5(value) : 0) + sizeof("=") + 2;
	buf = (char *) FUNC1(len);
	if (buf == NULL) {
		return FUNC0(name);
	}
#endif
#if !HAVE_SETENV
	if (value) {
		len = FUNC4(buf, len - 1, "%s=%s", name, value);
		FUNC2(buf);
	}
#endif
#if !HAVE_UNSETENV
	if (!value) {
		len = FUNC4(buf, len - 1, "%s=", name);
		FUNC2(buf);
	}
#endif
	return FUNC0(name);
}