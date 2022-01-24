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
typedef  int /*<<< orphan*/ * Relids ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static Relids
FUNC2(Relids relids, int offset)
{
	Relids		result = NULL;
	int			rtindex;

	rtindex = -1;
	while ((rtindex = FUNC1(relids, rtindex)) >= 0)
		result = FUNC0(result, rtindex + offset);
	return result;
}