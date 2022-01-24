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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ) ; 

char *
FUNC2(const char *connection_name, const char *name, int lineno)
{
	(void) lineno;				/* keep the compiler quiet */

	return FUNC1(name, FUNC0(connection_name));
}