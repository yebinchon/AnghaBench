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
struct exception_handler_data {int /*<<< orphan*/  dbghelp; int /*<<< orphan*/  module_list; int /*<<< orphan*/  module_name; int /*<<< orphan*/  cpu_info; int /*<<< orphan*/  str; int /*<<< orphan*/  sym_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC3(struct exception_handler_data *data)
{
	FUNC1(data->sym_info);
	FUNC2(&data->str);
	FUNC2(&data->cpu_info);
	FUNC2(&data->module_name);
	FUNC2(&data->module_list);
	FUNC0(data->dbghelp);
}