
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int zend_object ;


 int INCOMPLETE_CLASS_MSG ;
 char* ZSTR_VAL (int *) ;
 int php_error_docref (int *,int,int ,char*) ;
 int * php_lookup_class_name (int *) ;
 int zend_string_release_ex (int *,int ) ;

__attribute__((used)) static void incomplete_class_message(zend_object *object, int error_type)
{
 zend_string *class_name;

 class_name = php_lookup_class_name(object);

 if (class_name) {
  php_error_docref(((void*)0), error_type, INCOMPLETE_CLASS_MSG, ZSTR_VAL(class_name));
  zend_string_release_ex(class_name, 0);
 } else {
  php_error_docref(((void*)0), error_type, INCOMPLETE_CLASS_MSG, "unknown");
 }
}
