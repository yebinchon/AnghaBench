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
typedef  int /*<<< orphan*/  pg_uuid_t ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static Datum
FUNC2(void)
{
	/*
	 * palloc0 will create the UUID with all zeroes:
	 * "00000000-0000-0000-0000-000000000000"
	 */
	pg_uuid_t  *retval = (pg_uuid_t *) FUNC1(sizeof(pg_uuid_t));

	return FUNC0(retval);
}