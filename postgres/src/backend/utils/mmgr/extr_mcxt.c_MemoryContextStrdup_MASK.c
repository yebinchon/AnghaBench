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
typedef  scalar_t__ Size ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,scalar_t__) ; 
 scalar_t__ FUNC2 (char const*) ; 

char *
FUNC3(MemoryContext context, const char *string)
{
	char	   *nstr;
	Size		len = FUNC2(string) + 1;

	nstr = (char *) FUNC0(context, len);

	FUNC1(nstr, string, len);

	return nstr;
}