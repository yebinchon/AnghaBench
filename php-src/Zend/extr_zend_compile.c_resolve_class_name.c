
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_5__ {TYPE_1__* parent; int * name; } ;
typedef TYPE_2__ zend_class_entry ;
struct TYPE_4__ {int * name; } ;


 scalar_t__ zend_string_equals_literal_ci (int *,char*) ;

__attribute__((used)) static zend_string *resolve_class_name(zend_string *name, zend_class_entry *scope) {
 if (scope) {
  if (zend_string_equals_literal_ci(name, "self")) {
   name = scope->name;
  } else if (zend_string_equals_literal_ci(name, "parent") && scope->parent) {
   name = scope->parent->name;
  }
 }
 return name;
}
