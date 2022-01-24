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
typedef  int /*<<< orphan*/  relopt_kind ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int RELOPT_KIND_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int last_assigned_kind ; 

relopt_kind
FUNC3(void)
{
	/* don't hand out the last bit so that the enum's behavior is portable */
	if (last_assigned_kind >= RELOPT_KIND_MAX)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC2("user-defined relation parameter types limit exceeded")));
	last_assigned_kind <<= 1;
	return (relopt_kind) last_assigned_kind;
}