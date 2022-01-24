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
struct text_lookup {int dummy; } ;
typedef  struct text_lookup lookup_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct text_lookup*) ; 
 struct text_lookup* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct text_lookup*,char const*) ; 

lookup_t *FUNC3(const char *path)
{
	struct text_lookup *lookup = FUNC1(sizeof(struct text_lookup));

	if (!FUNC2(lookup, path)) {
		FUNC0(lookup);
		lookup = NULL;
	}

	return lookup;
}