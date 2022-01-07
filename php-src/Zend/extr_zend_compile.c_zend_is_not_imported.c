
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int zend_bool ;


 int FC (int ) ;
 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int imports ;
 int * zend_hash_find_ptr_lc (int ,int ,int ) ;

__attribute__((used)) static zend_bool zend_is_not_imported(zend_string *name) {

 return !FC(imports)
  || zend_hash_find_ptr_lc(FC(imports), ZSTR_VAL(name), ZSTR_LEN(name)) == ((void*)0);
}
