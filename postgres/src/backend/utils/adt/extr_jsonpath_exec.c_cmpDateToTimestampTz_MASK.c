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
typedef  int /*<<< orphan*/  TimestampTz ;
typedef  int /*<<< orphan*/  DateADT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC3(DateADT date1, TimestampTz tstz2, bool useTz)
{
	TimestampTz tstz1;
	int			overflow = 0;

	FUNC0(useTz, "date", "timestamptz");

	tstz1 = FUNC2(date1, &overflow);

	return FUNC1(tstz1, overflow, tstz2);
}