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
typedef  int Size ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,char*,int) ; 

__attribute__((used)) static void
FUNC2(char **srcptr, char *srcend, void *dest, Size size)
{
	if (*srcptr + size > srcend)
		FUNC0(ERROR, "incomplete GUC state");

	FUNC1(dest, *srcptr, size);
	*srcptr += size;
}