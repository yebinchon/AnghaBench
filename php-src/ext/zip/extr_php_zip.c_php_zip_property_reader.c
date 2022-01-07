
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {char* (* read_const_char_func ) (int *,int*) ;int (* read_int_func ) (int *) ;char* (* read_const_char_from_obj_func ) (TYPE_2__*) ;int type; } ;
typedef TYPE_1__ zip_prop_handler ;
typedef int zend_long ;
struct TYPE_7__ {int * za; } ;
typedef TYPE_2__ ze_zip_object ;


 int E_WARNING ;



 int ZVAL_BOOL (int *,int) ;
 int ZVAL_EMPTY_STRING (int *) ;
 int ZVAL_LONG (int *,int) ;
 int ZVAL_NULL (int *) ;
 int ZVAL_STRINGL (int *,char*,int) ;
 int php_error_docref (int *,int ,char*) ;
 int strlen (char const*) ;
 char* stub1 (int *,int*) ;
 int stub2 (int *) ;
 char* stub3 (TYPE_2__*) ;

__attribute__((used)) static zval *php_zip_property_reader(ze_zip_object *obj, zip_prop_handler *hnd, zval *rv)
{
 const char *retchar = ((void*)0);
 zend_long retint = 0;
 int len = 0;

 if (obj && obj->za != ((void*)0)) {
  if (hnd->read_const_char_func) {
   retchar = hnd->read_const_char_func(obj->za, &len);
  } else {
   if (hnd->read_int_func) {
    retint = hnd->read_int_func(obj->za);
    if (retint == -1) {
     php_error_docref(((void*)0), E_WARNING, "Internal zip error returned");
     return ((void*)0);
    }
   } else {
    if (hnd->read_const_char_from_obj_func) {
     retchar = hnd->read_const_char_from_obj_func(obj);
     len = strlen(retchar);
    }
   }
  }
 }

 switch (hnd->type) {
  case 128:
   if (retchar) {
    ZVAL_STRINGL(rv, (char *) retchar, len);
   } else {
    ZVAL_EMPTY_STRING(rv);
   }
   break;

  case 130:
   ZVAL_BOOL(rv, retint);
   break;
  case 129:
   ZVAL_LONG(rv, retint);
   break;
  default:
   ZVAL_NULL(rv);
 }

 return rv;
}
