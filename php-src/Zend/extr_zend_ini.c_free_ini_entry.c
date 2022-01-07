
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {scalar_t__ orig_value; scalar_t__ value; scalar_t__ name; } ;
typedef TYPE_1__ zend_ini_entry ;


 scalar_t__ Z_PTR_P (int *) ;
 int free (TYPE_1__*) ;
 int zend_string_release (scalar_t__) ;
 int zend_string_release_ex (scalar_t__,int) ;

__attribute__((used)) static void free_ini_entry(zval *zv)
{
 zend_ini_entry *entry = (zend_ini_entry*)Z_PTR_P(zv);

 zend_string_release_ex(entry->name, 1);
 if (entry->value) {
  zend_string_release(entry->value);
 }
 if (entry->orig_value) {
  zend_string_release_ex(entry->orig_value, 1);
 }
 free(entry);
}
