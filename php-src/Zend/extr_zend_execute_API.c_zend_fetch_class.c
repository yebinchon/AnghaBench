
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_6__ {struct TYPE_6__* parent; } ;
typedef TYPE_1__ zend_class_entry ;


 int EG (int ) ;
 int UNEXPECTED (int) ;

 int ZEND_FETCH_CLASS_DEFAULT ;
 int ZEND_FETCH_CLASS_INTERFACE ;
 int ZEND_FETCH_CLASS_MASK ;
 int ZEND_FETCH_CLASS_NO_AUTOLOAD ;


 int ZEND_FETCH_CLASS_SILENT ;

 int ZEND_FETCH_CLASS_TRAIT ;
 int ZSTR_VAL (int *) ;
 int current_execute_data ;
 int exception ;
 TYPE_1__* zend_get_called_scope (int ) ;
 int zend_get_class_fetch_type (int *) ;
 TYPE_1__* zend_get_executed_scope () ;
 TYPE_1__* zend_lookup_class_ex (int *,int *,int) ;
 int zend_throw_or_error (int,int *,char*,...) ;

zend_class_entry *zend_fetch_class(zend_string *class_name, int fetch_type)
{
 zend_class_entry *ce, *scope;
 int fetch_sub_type = fetch_type & ZEND_FETCH_CLASS_MASK;

check_fetch_type:
 switch (fetch_sub_type) {
  case 129:
   scope = zend_get_executed_scope();
   if (UNEXPECTED(!scope)) {
    zend_throw_or_error(fetch_type, ((void*)0), "Cannot access self:: when no class scope is active");
   }
   return scope;
  case 130:
   scope = zend_get_executed_scope();
   if (UNEXPECTED(!scope)) {
    zend_throw_or_error(fetch_type, ((void*)0), "Cannot access parent:: when no class scope is active");
    return ((void*)0);
   }
   if (UNEXPECTED(!scope->parent)) {
    zend_throw_or_error(fetch_type, ((void*)0), "Cannot access parent:: when current class scope has no parent");
   }
   return scope->parent;
  case 128:
   ce = zend_get_called_scope(EG(current_execute_data));
   if (UNEXPECTED(!ce)) {
    zend_throw_or_error(fetch_type, ((void*)0), "Cannot access static:: when no class scope is active");
    return ((void*)0);
   }
   return ce;
  case 131: {
    fetch_sub_type = zend_get_class_fetch_type(class_name);
    if (UNEXPECTED(fetch_sub_type != ZEND_FETCH_CLASS_DEFAULT)) {
     goto check_fetch_type;
    }
   }
   break;
 }

 if (fetch_type & ZEND_FETCH_CLASS_NO_AUTOLOAD) {
  return zend_lookup_class_ex(class_name, ((void*)0), fetch_type);
 } else if ((ce = zend_lookup_class_ex(class_name, ((void*)0), fetch_type)) == ((void*)0)) {
  if (!(fetch_type & ZEND_FETCH_CLASS_SILENT) && !EG(exception)) {
   if (fetch_sub_type == ZEND_FETCH_CLASS_INTERFACE) {
    zend_throw_or_error(fetch_type, ((void*)0), "Interface '%s' not found", ZSTR_VAL(class_name));
   } else if (fetch_sub_type == ZEND_FETCH_CLASS_TRAIT) {
    zend_throw_or_error(fetch_type, ((void*)0), "Trait '%s' not found", ZSTR_VAL(class_name));
   } else {
    zend_throw_or_error(fetch_type, ((void*)0), "Class '%s' not found", ZSTR_VAL(class_name));
   }
  }
  return ((void*)0);
 }
 return ce;
}
