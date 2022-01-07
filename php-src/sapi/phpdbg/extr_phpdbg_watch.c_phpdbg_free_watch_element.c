
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ name_in_parent; scalar_t__ str; } ;
typedef TYPE_1__ phpdbg_watch_element ;


 int efree (TYPE_1__*) ;
 int zend_string_release (scalar_t__) ;

void phpdbg_free_watch_element(phpdbg_watch_element *element) {
 zend_string_release(element->str);
 if (element->name_in_parent) {
  zend_string_release(element->name_in_parent);
 }
 efree(element);
}
