
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {int module_number; int name; int value; } ;
typedef TYPE_1__ zend_ini_entry ;


 int ZVAL_NULL (int *) ;
 int ZVAL_STR_COPY (int *,int ) ;
 int Z_ARRVAL_P (int *) ;
 int zend_symtable_update (int ,int ,int *) ;

__attribute__((used)) static void _addinientry(zend_ini_entry *ini_entry, zval *retval, int number)
{
 if (number == ini_entry->module_number) {
  zval zv;
  if (ini_entry->value) {
   ZVAL_STR_COPY(&zv, ini_entry->value);
  } else {
   ZVAL_NULL(&zv);
  }
  zend_symtable_update(Z_ARRVAL_P(retval), ini_entry->name, &zv);
 }
}
