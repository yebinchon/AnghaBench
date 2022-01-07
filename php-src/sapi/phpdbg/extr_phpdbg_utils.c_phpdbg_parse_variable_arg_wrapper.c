
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int (* phpdbg_parse_var_func ) (char*,size_t,char*,size_t,int *,int *) ;
typedef int HashTable ;



__attribute__((used)) static int phpdbg_parse_variable_arg_wrapper(char *name, size_t len, char *keyname, size_t keylen, HashTable *parent, zval *zv, phpdbg_parse_var_func callback) {
 return callback(name, len, keyname, keylen, parent, zv);
}
