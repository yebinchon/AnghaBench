
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_6__ {int properties_info; } ;
typedef TYPE_1__ zend_class_entry ;


 scalar_t__ zend_hash_exists (int *,int *) ;

__attribute__((used)) static zend_class_entry* find_first_definition(zend_class_entry *ce, zend_class_entry **traits, size_t current_trait, zend_string *prop_name, zend_class_entry *coliding_ce)
{
 size_t i;

 if (coliding_ce == ce) {
  for (i = 0; i < current_trait; i++) {
   if (traits[i]
    && zend_hash_exists(&traits[i]->properties_info, prop_name)) {
    return traits[i];
   }
  }
 }

 return coliding_ce;
}
