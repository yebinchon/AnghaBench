
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exception_handler_data {int dbghelp; } ;


 int GET_DBGHELP_IMPORT (int ,char*) ;
 int LoadLibraryW (char*) ;
 int enumerate_loaded_modules64 ;
 int minidump_write_dump ;
 int stack_walk64 ;
 int sym_cleanup ;
 int sym_from_addr ;
 int sym_function_table_access64 ;
 int sym_get_module_base64 ;
 int sym_get_module_info64 ;
 int sym_initialize ;
 int sym_refresh_module_list ;
 int sym_set_options ;

__attribute__((used)) static inline bool get_dbghelp_imports(struct exception_handler_data *data)
{
 data->dbghelp = LoadLibraryW(L"DbgHelp");
 if (!data->dbghelp)
  return 0;

 GET_DBGHELP_IMPORT(sym_initialize, "SymInitialize");
 GET_DBGHELP_IMPORT(sym_cleanup, "SymCleanup");
 GET_DBGHELP_IMPORT(sym_set_options, "SymSetOptions");
 GET_DBGHELP_IMPORT(sym_function_table_access64,
      "SymFunctionTableAccess64");
 GET_DBGHELP_IMPORT(sym_get_module_base64, "SymGetModuleBase64");
 GET_DBGHELP_IMPORT(sym_from_addr, "SymFromAddrW");
 GET_DBGHELP_IMPORT(sym_get_module_info64, "SymGetModuleInfo64");
 GET_DBGHELP_IMPORT(sym_refresh_module_list, "SymRefreshModuleList");
 GET_DBGHELP_IMPORT(stack_walk64, "StackWalk64");
 GET_DBGHELP_IMPORT(enumerate_loaded_modules64,
      "EnumerateLoadedModulesW64");
 GET_DBGHELP_IMPORT(minidump_write_dump, "MiniDumpWriteDump");

 return 1;
}
