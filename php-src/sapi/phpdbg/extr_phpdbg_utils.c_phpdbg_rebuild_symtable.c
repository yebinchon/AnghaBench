
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int func; } ;


 TYPE_1__* EG (int ) ;
 int FAILURE ;
 int SUCCESS ;
 int current_execute_data ;
 int phpdbg_error (char*,char*,char*) ;
 int zend_rebuild_symbol_table () ;

int phpdbg_rebuild_symtable(void) {
 if (!EG(current_execute_data) || !EG(current_execute_data)->func) {
  phpdbg_error("inactive", "type=\"op_array\"", "No active op array!");
  return FAILURE;
 }

 if (!zend_rebuild_symbol_table()) {
  phpdbg_error("inactive", "type=\"symbol_table\"", "No active symbol table!");
  return FAILURE;
 }

 return SUCCESS;
}
