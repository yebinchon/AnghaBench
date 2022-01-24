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
struct TYPE_4__ {scalar_t__ handle; struct TYPE_4__* dirname; } ;
typedef  TYPE_1__ DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int
FUNC2(DIR *d)
{
	int			ret = 0;

	if (d->handle != INVALID_HANDLE_VALUE)
		ret = !FUNC0(d->handle);
	FUNC1(d->dirname);
	FUNC1(d);

	return ret;
}