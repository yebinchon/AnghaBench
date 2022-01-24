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
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  DateADT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  date_ge ; 

__attribute__((used)) static bool
FUNC3(const void *a, const void *b, FmgrInfo *flinfo)
{
	return FUNC1(
						FUNC2(date_ge, FUNC0(*((const DateADT *) a)), FUNC0(*((const DateADT *) b)))
		);
}