#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int freeOK; scalar_t__ pos; } ;
typedef  TYPE_1__ dynamicPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,void*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static dynamicPtr * FUNC2 (int initialSize, void *data, int freeOKFlag)
{
	dynamicPtr *dp;
	dp = (dynamicPtr *) FUNC1 (sizeof (dynamicPtr));

	FUNC0 (dp, initialSize, data);

	dp->pos = 0;
	dp->freeOK = freeOKFlag;

	return dp;
}