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
typedef  int /*<<< orphan*/  zval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(zval *obj, char *fault_code, char *fault_string, char *fault_actor, zval *fault_detail) /* {{{ */
{
	zval fault;

	FUNC0(&fault);
	FUNC3(&fault, NULL, fault_code, fault_string, fault_actor, fault_detail, NULL);
	FUNC2(obj, "__soap_fault", &fault);
	FUNC1(fault);
}