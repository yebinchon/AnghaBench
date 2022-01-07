
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int zend_class_entry ;


 scalar_t__ EG (int ) ;
 int E_ERROR ;
 int ZEND_FETCH_CLASS_EXCEPTION ;
 int ZEND_FETCH_CLASS_INTERFACE ;
 int ZEND_FETCH_CLASS_MASK ;
 int ZEND_FETCH_CLASS_NO_AUTOLOAD ;
 int ZEND_FETCH_CLASS_SILENT ;
 int ZEND_FETCH_CLASS_TRAIT ;
 int ZSTR_VAL (int *) ;
 int ZVAL_OBJ (int *,scalar_t__) ;
 int Z_ADDREF (int ) ;
 int exception ;
 int zend_clear_exception () ;
 int zend_error_noreturn (int ,char*,int ) ;
 int * zend_lookup_class_ex (int *,int *,int) ;
 int zend_throw_or_error (int,int *,char*,int ) ;
 int * zval_get_string (int *) ;

zend_class_entry *zend_fetch_class_by_name(zend_string *class_name, zend_string *key, int fetch_type)
{
 zend_class_entry *ce;

 if (fetch_type & ZEND_FETCH_CLASS_NO_AUTOLOAD) {
  return zend_lookup_class_ex(class_name, key, fetch_type);
 } else if ((ce = zend_lookup_class_ex(class_name, key, fetch_type)) == ((void*)0)) {
  if (fetch_type & ZEND_FETCH_CLASS_SILENT) {
   return ((void*)0);
  }
  if (EG(exception)) {
   if (!(fetch_type & ZEND_FETCH_CLASS_EXCEPTION)) {
    zend_string *exception_str;
    zval exception_zv;
    ZVAL_OBJ(&exception_zv, EG(exception));
    Z_ADDREF(exception_zv);
    zend_clear_exception();
    exception_str = zval_get_string(&exception_zv);
    zend_error_noreturn(E_ERROR,
     "During class fetch: Uncaught %s", ZSTR_VAL(exception_str));
   }
   return ((void*)0);
  }
  if ((fetch_type & ZEND_FETCH_CLASS_MASK) == ZEND_FETCH_CLASS_INTERFACE) {
   zend_throw_or_error(fetch_type, ((void*)0), "Interface '%s' not found", ZSTR_VAL(class_name));
  } else if ((fetch_type & ZEND_FETCH_CLASS_MASK) == ZEND_FETCH_CLASS_TRAIT) {
   zend_throw_or_error(fetch_type, ((void*)0), "Trait '%s' not found", ZSTR_VAL(class_name));
  } else {
   zend_throw_or_error(fetch_type, ((void*)0), "Class '%s' not found", ZSTR_VAL(class_name));
  }
  return ((void*)0);
 }
 return ce;
}
