
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_function ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__* name; int function_table; } ;
typedef TYPE_2__ zend_class_entry ;
struct TYPE_4__ {int val; } ;


 scalar_t__ ZEND_USER_CLASS ;
 int phpdbg_out (char*,int ,char const*) ;
 int phpdbg_print_function_helper (int *) ;
 int strlen (char const*) ;
 int * zend_hash_str_find_ptr (int *,char const*,int ) ;

__attribute__((used)) static void phpdbg_print_opcodes_method_ce(zend_class_entry *ce, const char *function) {
 zend_function *func;

 if (ce->type != ZEND_USER_CLASS) {
  phpdbg_out("function name: %s::%s (internal)\n", ce->name->val, function);
  return;
 }

 if (!(func = zend_hash_str_find_ptr(&ce->function_table, function, strlen(function)))) {
  return;
 }

 phpdbg_out("function name: %s::%s\n", ce->name->val, function);
 phpdbg_print_function_helper(func);
}
