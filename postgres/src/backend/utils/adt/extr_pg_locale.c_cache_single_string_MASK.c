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
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(char **dst, const char *src, int encoding)
{
	char	   *ptr;
	char	   *olddst;

	/* Convert the string to the database encoding, or validate it's OK */
	ptr = FUNC2(src, FUNC3(src), encoding);

	/* Store the string in long-lived storage, replacing any previous value */
	olddst = *dst;
	*dst = FUNC0(TopMemoryContext, ptr);
	if (olddst)
		FUNC1(olddst);

	/* Might as well clean up any palloc'd conversion result, too */
	if (ptr != src)
		FUNC1(ptr);
}