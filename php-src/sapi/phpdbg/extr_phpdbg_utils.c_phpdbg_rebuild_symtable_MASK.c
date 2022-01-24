#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  func; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FAILURE ; 
 int SUCCESS ; 
 int /*<<< orphan*/  current_execute_data ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(void) {
	if (!FUNC0(current_execute_data) || !FUNC0(current_execute_data)->func) {
		FUNC1("inactive", "type=\"op_array\"", "No active op array!");
		return FAILURE;
	}

	if (!FUNC2()) {
		FUNC1("inactive", "type=\"symbol_table\"", "No active symbol table!");
		return FAILURE;
	}

	return SUCCESS;
}