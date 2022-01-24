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
 char* FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(char **header_buffer, const char *specifier, char *string)
{
	*header_buffer = FUNC0(*header_buffer, FUNC2(*header_buffer) + FUNC2(specifier) + FUNC2(string) + 1);
	FUNC1(*header_buffer + FUNC2(*header_buffer), specifier, string);
	return 1;
}