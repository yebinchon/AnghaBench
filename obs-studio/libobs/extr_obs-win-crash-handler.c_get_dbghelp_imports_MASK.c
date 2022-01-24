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
struct exception_handler_data {int /*<<< orphan*/  dbghelp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  enumerate_loaded_modules64 ; 
 int /*<<< orphan*/  minidump_write_dump ; 
 int /*<<< orphan*/  stack_walk64 ; 
 int /*<<< orphan*/  sym_cleanup ; 
 int /*<<< orphan*/  sym_from_addr ; 
 int /*<<< orphan*/  sym_function_table_access64 ; 
 int /*<<< orphan*/  sym_get_module_base64 ; 
 int /*<<< orphan*/  sym_get_module_info64 ; 
 int /*<<< orphan*/  sym_initialize ; 
 int /*<<< orphan*/  sym_refresh_module_list ; 
 int /*<<< orphan*/  sym_set_options ; 

__attribute__((used)) static inline bool FUNC2(struct exception_handler_data *data)
{
	data->dbghelp = FUNC1(L"DbgHelp");
	if (!data->dbghelp)
		return false;

	FUNC0(sym_initialize, "SymInitialize");
	FUNC0(sym_cleanup, "SymCleanup");
	FUNC0(sym_set_options, "SymSetOptions");
	FUNC0(sym_function_table_access64,
			   "SymFunctionTableAccess64");
	FUNC0(sym_get_module_base64, "SymGetModuleBase64");
	FUNC0(sym_from_addr, "SymFromAddrW");
	FUNC0(sym_get_module_info64, "SymGetModuleInfo64");
	FUNC0(sym_refresh_module_list, "SymRefreshModuleList");
	FUNC0(stack_walk64, "StackWalk64");
	FUNC0(enumerate_loaded_modules64,
			   "EnumerateLoadedModulesW64");
	FUNC0(minidump_write_dump, "MiniDumpWriteDump");

	return true;
}