
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int zend_bool ;


 scalar_t__ zend_string_equals_literal_ci (int *,char*) ;

__attribute__((used)) static zend_bool is_generator_compatible_class_type(zend_string *name) {
 return zend_string_equals_literal_ci(name, "Traversable")
  || zend_string_equals_literal_ci(name, "Iterator")
  || zend_string_equals_literal_ci(name, "Generator");
}
