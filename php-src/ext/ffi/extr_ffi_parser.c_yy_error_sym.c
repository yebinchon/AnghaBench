
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * sym_name ;
 int yy_line ;
 int zend_ffi_parser_error (char*,char const*,int ,int ) ;

__attribute__((used)) static void yy_error_sym(const char *msg, int sym) {
 zend_ffi_parser_error("%s '%s' at line %d", msg, sym_name[sym], yy_line);
}
