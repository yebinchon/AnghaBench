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
typedef  int uint32 ;
typedef  int /*<<< orphan*/  QueryItem ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int,int*) ; 

__attribute__((used)) static void
FUNC2(QueryItem *ptr, int size, bool *needcleanup)
{
	uint32		pos;

	*needcleanup = false;
	pos = 0;
	FUNC1(ptr, &pos, size, needcleanup);

	if (pos != size)
		FUNC0(ERROR, "malformed tsquery: extra nodes");
}