#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mp_result ;
typedef  TYPE_1__* mp_int ;
struct TYPE_8__ {scalar_t__ sign; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  MP_OK ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 

mp_result
FUNC4(mp_int a, mp_int c)
{
	FUNC2(a != NULL && c != NULL);

	mp_result	res;

	if ((res = FUNC3(a, c)) != MP_OK)
		return res;

	if (FUNC0(c) != 0)
		c->sign = 1 - FUNC1(a);

	return MP_OK;
}