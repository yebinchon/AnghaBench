
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_function ;


 scalar_t__ PHPDBG_G (int ) ;
 int ops ;
 int phpdbg_out (char*) ;
 int phpdbg_print_function_helper (int *) ;

void phpdbg_print_opcodes_main() {
 phpdbg_out("function name: (null)\n");
 phpdbg_print_function_helper((zend_function *) PHPDBG_G(ops));
}
