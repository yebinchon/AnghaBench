
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zip_read_int_t ;
typedef int zip_read_const_char_t ;
typedef int zip_read_const_char_from_ze_t ;
struct TYPE_3__ {int type; int read_const_char_from_obj_func; int read_int_func; int read_const_char_func; } ;
typedef TYPE_1__ zip_prop_handler ;
typedef int zend_string ;
typedef int HashTable ;


 int ZEND_ACC_PUBLIC ;
 int ZVAL_NULL (int *) ;
 int strlen (char*) ;
 int zend_declare_property_ex (int ,int *,int *,int ,int *) ;
 int zend_hash_add_mem (int *,int *,TYPE_1__*,int) ;
 int * zend_string_init_interned (char*,int ,int) ;
 int zend_string_release_ex (int *,int) ;
 int zip_class_entry ;

__attribute__((used)) static void php_zip_register_prop_handler(HashTable *prop_handler, char *name, zip_read_int_t read_int_func, zip_read_const_char_t read_char_func, zip_read_const_char_from_ze_t read_char_from_obj_func, int rettype)
{
 zip_prop_handler hnd;
 zend_string *str;
 zval tmp;

 hnd.read_const_char_func = read_char_func;
 hnd.read_int_func = read_int_func;
 hnd.read_const_char_from_obj_func = read_char_from_obj_func;
 hnd.type = rettype;
 str = zend_string_init_interned(name, strlen(name), 1);
 zend_hash_add_mem(prop_handler, str, &hnd, sizeof(zip_prop_handler));


 ZVAL_NULL(&tmp);
 zend_declare_property_ex(zip_class_entry, str, &tmp, ZEND_ACC_PUBLIC, ((void*)0));
 zend_string_release_ex(str, 1);
}
