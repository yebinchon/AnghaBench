
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FAILURE ;
 int phpdbg_create_simple_watchpoint ;
 scalar_t__ phpdbg_rebuild_symtable () ;
 int phpdbg_watchpoint_parse_symtables (char*,size_t,int ) ;

int phpdbg_create_var_watchpoint(char *input, size_t len) {
 if (phpdbg_rebuild_symtable() == FAILURE) {
  return FAILURE;
 }

 return phpdbg_watchpoint_parse_symtables(input, len, phpdbg_create_simple_watchpoint);
}
