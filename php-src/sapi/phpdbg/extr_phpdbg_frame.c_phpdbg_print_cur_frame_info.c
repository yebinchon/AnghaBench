
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;


 int efree (int *) ;
 int phpdbg_list_file (int *,int,scalar_t__,scalar_t__) ;
 int strlen (char const*) ;
 char* zend_get_executed_filename () ;
 scalar_t__ zend_get_executed_lineno () ;
 int * zend_string_init (char const*,int ,int ) ;

void phpdbg_print_cur_frame_info() {
 const char *file_chr = zend_get_executed_filename();
 zend_string *file = zend_string_init(file_chr, strlen(file_chr), 0);

 phpdbg_list_file(file, 3, zend_get_executed_lineno() - 1, zend_get_executed_lineno());
 efree(file);
}
