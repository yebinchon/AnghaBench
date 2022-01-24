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
 int /*<<< orphan*/  EAN13_index ; 
 int /*<<< orphan*/  EAN13_range ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ISBN_index ; 
 int /*<<< orphan*/  ISBN_range ; 
 int /*<<< orphan*/  ISMN_index ; 
 int /*<<< orphan*/  ISMN_range ; 
 scalar_t__ ISN_DEBUG ; 
 int /*<<< orphan*/  ISSN_index ; 
 int /*<<< orphan*/  ISSN_range ; 
 int /*<<< orphan*/  UPC_index ; 
 int /*<<< orphan*/  UPC_range ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

void
FUNC2(void)
{
	if (ISN_DEBUG)
	{
		if (!FUNC0(EAN13_range, EAN13_index))
			FUNC1(ERROR, "EAN13 failed check");
		if (!FUNC0(ISBN_range, ISBN_index))
			FUNC1(ERROR, "ISBN failed check");
		if (!FUNC0(ISMN_range, ISMN_index))
			FUNC1(ERROR, "ISMN failed check");
		if (!FUNC0(ISSN_range, ISSN_index))
			FUNC1(ERROR, "ISSN failed check");
		if (!FUNC0(UPC_range, UPC_index))
			FUNC1(ERROR, "UPC failed check");
	}
}