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

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(char **destptr, Size *maxbytes, void *val, Size valsize)
{
	if (valsize > *maxbytes)
		FUNC0(ERROR, "not enough space to serialize GUC state");

	FUNC1(*destptr, val, valsize);
	*destptr += valsize;
	*maxbytes -= valsize;
}