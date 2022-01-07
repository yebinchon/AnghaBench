
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_5__ {int function_name; TYPE_1__* scope; } ;
typedef TYPE_2__ zend_op_array ;
typedef int phpdbg_breakbase_t ;
struct TYPE_4__ {int name; } ;
typedef int HashTable ;


 size_t PHPDBG_BREAK_METHOD ;
 int * PHPDBG_G (int ) ;
 int bp ;
 void* zend_hash_find_ptr (int *,int *) ;
 int zend_string_release (int *) ;
 int * zend_string_tolower (int ) ;

__attribute__((used)) static inline phpdbg_breakbase_t *phpdbg_find_breakpoint_method(zend_op_array *ops)
{
 HashTable *class_table;
 phpdbg_breakbase_t *brake = ((void*)0);
 zend_string *class_lcname = zend_string_tolower(ops->scope->name);

 if ((class_table = zend_hash_find_ptr(&PHPDBG_G(bp)[PHPDBG_BREAK_METHOD], class_lcname))) {
  zend_string *lcname = zend_string_tolower(ops->function_name);

  brake = zend_hash_find_ptr(class_table, lcname);

  zend_string_release(lcname);
 }

 zend_string_release(class_lcname);
 return brake;
}
