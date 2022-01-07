
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_5__ {TYPE_2__* ce; int * name; int type; } ;
typedef TYPE_1__ zend_property_info ;
struct TYPE_6__ {int * name; } ;


 int E_COMPILE_ERROR ;
 int ZSTR_VAL (int *) ;
 int zend_error_noreturn (int ,char*,int ,int ,int ,int ) ;
 int * zend_type_to_string_resolved (int ,TYPE_2__*) ;

__attribute__((used)) static void emit_incompatible_property_error(
  const zend_property_info *child, const zend_property_info *parent) {
 zend_string *type_str = zend_type_to_string_resolved(parent->type, parent->ce);
 zend_error_noreturn(E_COMPILE_ERROR,
  "Type of %s::$%s must be %s (as in class %s)",
  ZSTR_VAL(child->ce->name),
  ZSTR_VAL(child->name),
  ZSTR_VAL(type_str),
  ZSTR_VAL(parent->ce->name));
}
