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
typedef  int /*<<< orphan*/  gs_effect_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*) ; 

gs_effect_t *FUNC3(gs_effect_t **effect, const char *file)
{
	if (!*effect) {
		char *filename = FUNC2(file);
		*effect = FUNC1(filename, NULL);
		FUNC0(filename);
	}

	return *effect;
}