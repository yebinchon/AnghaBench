
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_string ;
typedef int xmlreader_read_int_t ;
typedef int xmlreader_read_const_char_t ;
struct TYPE_3__ {int type; int read_int_func; int read_char_func; } ;
typedef TYPE_1__ xmlreader_prop_handler ;
typedef int HashTable ;


 int strlen (char*) ;
 int zend_hash_add_mem (int *,int *,TYPE_1__*,int) ;
 int * zend_string_init_interned (char*,int ,int) ;
 int zend_string_release_ex (int *,int) ;

__attribute__((used)) static void xmlreader_register_prop_handler(HashTable *prop_handler, char *name, xmlreader_read_int_t read_int_func, xmlreader_read_const_char_t read_char_func, int rettype)
{
 xmlreader_prop_handler hnd;
 zend_string *str;

 hnd.read_char_func = read_char_func;
 hnd.read_int_func = read_int_func;
 hnd.type = rettype;
 str = zend_string_init_interned(name, strlen(name), 1);
 zend_hash_add_mem(prop_handler, str, &hnd, sizeof(xmlreader_prop_handler));
 zend_string_release_ex(str, 1);
}
