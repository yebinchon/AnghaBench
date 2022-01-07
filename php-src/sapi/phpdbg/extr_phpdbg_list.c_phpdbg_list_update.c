
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHPDBG_G ;


 int phpdbg_init_compile_file ;
 int zend_compile_file ;

void phpdbg_list_update(void) {
 PHPDBG_G(init_compile_file) = zend_compile_file;
 zend_compile_file = phpdbg_init_compile_file;
}
