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
 int /*<<< orphan*/  FUNC0 (int,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char**) ; 
 int WSDL_NO_STRING_MARKER ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static char* FUNC3(char **in)
{
	char *s;
	int len;

	FUNC0(len, in);
	if (len == WSDL_NO_STRING_MARKER) {
		return NULL;
	} else {
		s = FUNC2(len+1);
		FUNC1(s, len, in);
		s[len] = '\0';
		return s;
	}
}