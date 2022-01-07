
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int zend_class_entry ;
typedef scalar_t__ zend_bool ;


 int EG (int ) ;
 int E_WARNING ;
 int ZSTR_VAL (int *) ;
 int class_table ;
 int php_error_docref (int *,int ,char*,int ,char*) ;
 int * zend_hash_find_ptr (int ,int *) ;
 int * zend_lookup_class (int *) ;
 int zend_string_release (int *) ;
 int * zend_string_tolower (int *) ;

__attribute__((used)) static zend_class_entry * spl_find_ce_by_name(zend_string *name, zend_bool autoload)
{
 zend_class_entry *ce;

 if (!autoload) {
  zend_string *lc_name = zend_string_tolower(name);

  ce = zend_hash_find_ptr(EG(class_table), lc_name);
  zend_string_release(lc_name);
 } else {
   ce = zend_lookup_class(name);
  }
  if (ce == ((void*)0)) {
  php_error_docref(((void*)0), E_WARNING, "Class %s does not exist%s", ZSTR_VAL(name), autoload ? " and could not be loaded" : "");
  return ((void*)0);
 }

 return ce;
}
