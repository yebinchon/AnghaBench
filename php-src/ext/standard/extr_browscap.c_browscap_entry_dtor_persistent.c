
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_4__ {scalar_t__ parent; scalar_t__ pattern; } ;
typedef TYPE_1__ browscap_entry ;


 TYPE_1__* Z_PTR_P (int *) ;
 int pefree (TYPE_1__*,int) ;
 int zend_string_release_ex (scalar_t__,int) ;

__attribute__((used)) static void browscap_entry_dtor_persistent(zval *zvalue)
{
 browscap_entry *entry = Z_PTR_P(zvalue);
 zend_string_release_ex(entry->pattern, 1);
 if (entry->parent) {
  zend_string_release_ex(entry->parent, 1);
 }
 pefree(entry, 1);
}
