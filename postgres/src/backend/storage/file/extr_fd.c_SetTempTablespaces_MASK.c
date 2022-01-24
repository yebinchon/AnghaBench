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
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int nextTempTableSpace ; 
 int numTempTableSpaces ; 
 int FUNC1 () ; 
 int /*<<< orphan*/ * tempTableSpaces ; 

void
FUNC2(Oid *tableSpaces, int numSpaces)
{
	FUNC0(numSpaces >= 0);
	tempTableSpaces = tableSpaces;
	numTempTableSpaces = numSpaces;

	/*
	 * Select a random starting point in the list.  This is to minimize
	 * conflicts between backends that are most likely sharing the same list
	 * of temp tablespaces.  Note that if we create multiple temp files in the
	 * same transaction, we'll advance circularly through the list --- this
	 * ensures that large temporary sort files are nicely spread across all
	 * available tablespaces.
	 */
	if (numSpaces > 1)
		nextTempTableSpace = FUNC1() % numSpaces;
	else
		nextTempTableSpace = 0;
}