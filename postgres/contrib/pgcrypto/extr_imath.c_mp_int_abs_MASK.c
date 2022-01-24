#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mp_result ;
typedef  TYPE_1__* mp_int ;
struct TYPE_6__ {int /*<<< orphan*/  sign; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_OK ; 
 int /*<<< orphan*/  MP_ZPOS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 

mp_result
FUNC2(mp_int a, mp_int c)
{
	FUNC0(a != NULL && c != NULL);

	mp_result	res;

	if ((res = FUNC1(a, c)) != MP_OK)
		return res;

	c->sign = MP_ZPOS;
	return MP_OK;
}