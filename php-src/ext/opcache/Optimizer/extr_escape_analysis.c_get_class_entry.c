
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_6__ {int class_table; } ;
typedef TYPE_1__ zend_script ;
struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_2__ zend_class_entry ;


 int * CG (int ) ;
 scalar_t__ ZEND_INTERNAL_CLASS ;
 int class_table ;
 TYPE_2__* zend_hash_find_ptr (int *,int *) ;

__attribute__((used)) static inline zend_class_entry *get_class_entry(const zend_script *script, zend_string *lcname)
{
 zend_class_entry *ce = script ? zend_hash_find_ptr(&script->class_table, lcname) : ((void*)0);
 if (ce) {
  return ce;
 }

 ce = zend_hash_find_ptr(CG(class_table), lcname);
 if (ce && ce->type == ZEND_INTERNAL_CLASS) {
  return ce;
 }

 return ((void*)0);
}
