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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (void const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC5(const void *obj)
{
	char	   *s;
	char	   *f;

	s = FUNC2(obj);
	f = FUNC1(s);
	FUNC3(s);
	FUNC4("%s\n", f);
	FUNC0(stdout);
	FUNC3(f);
}