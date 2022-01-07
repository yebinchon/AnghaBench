
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PHPDBG_G ;


 int phpdbg_compile_file ;
 int phpdbg_compile_string ;
 int zend_compile_file ;
 int zend_compile_string ;

void phpdbg_init_list(void) {
 PHPDBG_G(compile_file) = zend_compile_file;
 PHPDBG_G(compile_string) = zend_compile_string;
 zend_compile_file = phpdbg_compile_file;
 zend_compile_string = phpdbg_compile_string;
}
