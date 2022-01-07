
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int name; } ;
typedef TYPE_1__ zend_class_entry ;
struct TYPE_9__ {int name; } ;


 int E_ERROR ;
 int FAILURE ;
 int SUCCESS ;
 int ZSTR_VAL (int ) ;
 scalar_t__ instanceof_function (TYPE_1__*,TYPE_4__*) ;
 TYPE_4__* zend_ce_error ;
 TYPE_4__* zend_ce_exception ;
 int zend_error_noreturn (int ,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int zend_implement_throwable(zend_class_entry *interface, zend_class_entry *class_type)
{
 if (instanceof_function(class_type, zend_ce_exception) || instanceof_function(class_type, zend_ce_error)) {
  return SUCCESS;
 }
 zend_error_noreturn(E_ERROR, "Class %s cannot implement interface %s, extend %s or %s instead",
  ZSTR_VAL(class_type->name),
  ZSTR_VAL(interface->name),
  ZSTR_VAL(zend_ce_exception->name),
  ZSTR_VAL(zend_ce_error->name));
 return FAILURE;
}
