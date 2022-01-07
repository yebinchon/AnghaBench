
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int HashTable ;


 int SUCCESS ;
 int efree (char*) ;
 int phpdbg_notice (char*,char*,char*,int,char*) ;
 int phpdbg_out (char*) ;
 int phpdbg_xml (char*) ;
 int zend_print_zval_r (int *,int ) ;

int phpdbg_output_ev_variable(char *name, size_t len, char *keyname, size_t keylen, HashTable *parent, zval *zv) {
 phpdbg_notice("eval", "variable=\"%.*s\"", "Printing variable %.*s", (int) len, name);
 phpdbg_xml("<eval %r>");
 zend_print_zval_r(zv, 0);
 phpdbg_xml("</eval>");
 phpdbg_out("\n");

 efree(name);
 efree(keyname);

 return SUCCESS;
}
