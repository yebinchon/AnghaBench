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
struct descriptor {int count; } ;

/* Variables and functions */
 struct descriptor* FUNC0 (int,char const*) ; 

bool
FUNC1(int lineno, const char *desc_name, int count)
{
	struct descriptor *desc = FUNC0(lineno, desc_name);

	if (desc == NULL)
		return false;
	desc->count = count;
	return true;
}