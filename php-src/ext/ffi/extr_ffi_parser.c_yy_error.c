
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int yy_line ;
 int zend_ffi_parser_error (char*,char const*,int ) ;

__attribute__((used)) static void yy_error(const char *msg) {
 zend_ffi_parser_error("%s at line %d", msg, yy_line);
}
