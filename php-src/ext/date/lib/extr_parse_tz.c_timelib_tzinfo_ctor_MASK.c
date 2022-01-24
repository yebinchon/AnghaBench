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
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ timelib_tzinfo ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static timelib_tzinfo* FUNC2(char *name)
{
	timelib_tzinfo *t;
	t = FUNC0(1, sizeof(timelib_tzinfo));
	t->name = FUNC1(name);

	return t;
}