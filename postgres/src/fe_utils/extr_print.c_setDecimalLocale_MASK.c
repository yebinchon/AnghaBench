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
struct lconv {int* grouping; scalar_t__* thousands_sep; scalar_t__* decimal_point; } ;

/* Variables and functions */
 char* decimal_point ; 
 int groupdigits ; 
 struct lconv* FUNC0 () ; 
 void* FUNC1 (scalar_t__*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 char* thousands_sep ; 

void
FUNC3(void)
{
	struct lconv *extlconv;

	extlconv = FUNC0();

	/* Don't accept an empty decimal_point string */
	if (*extlconv->decimal_point)
		decimal_point = FUNC1(extlconv->decimal_point);
	else
		decimal_point = ".";	/* SQL output standard */

	/*
	 * Although the Open Group standard allows locales to supply more than one
	 * group width, we consider only the first one, and we ignore any attempt
	 * to suppress grouping by specifying CHAR_MAX.  As in the backend's
	 * cash.c, we must apply a range check to avoid being fooled by variant
	 * CHAR_MAX values.
	 */
	groupdigits = *extlconv->grouping;
	if (groupdigits <= 0 || groupdigits > 6)
		groupdigits = 3;		/* most common */

	/* Don't accept an empty thousands_sep string, either */
	/* similar code exists in formatting.c */
	if (*extlconv->thousands_sep)
		thousands_sep = FUNC1(extlconv->thousands_sep);
	/* Make sure thousands separator doesn't match decimal point symbol. */
	else if (FUNC2(decimal_point, ",") != 0)
		thousands_sep = ",";
	else
		thousands_sep = ".";
}