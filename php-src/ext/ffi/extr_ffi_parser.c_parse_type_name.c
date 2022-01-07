
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ffi_dcl ;


 int parse_abstract_declarator (int,int *) ;
 int parse_specifier_qualifier_list (int,int *) ;

__attribute__((used)) static int parse_type_name(int sym, zend_ffi_dcl *dcl) {
 sym = parse_specifier_qualifier_list(sym, dcl);
 sym = parse_abstract_declarator(sym, dcl);
 return sym;
}
