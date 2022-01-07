
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef TYPE_1__* xmlNodePtr ;
struct TYPE_4__ {struct TYPE_4__* next; scalar_t__ name; } ;


 scalar_t__ IS_ARRAY ;
 scalar_t__ IS_STRING ;
 int XSD_ANYXML ;
 int ZVAL_COPY_VALUE (int *,int *) ;
 int ZVAL_NULL (int *) ;
 int Z_ARRVAL_P (int *) ;
 char* Z_STRVAL (int ) ;
 int Z_TRY_DELREF (int ) ;
 scalar_t__ Z_TYPE (int ) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int add_assoc_zval (int *,char*,int *) ;
 int add_next_index_zval (int *,int *) ;
 int array_init (int *) ;
 int concat_function (int *,int *,int *) ;
 int get_conversion (int ) ;
 int * get_zval_property (int *,char*,int *) ;
 int master_to_zval (int *,int ,TYPE_1__*) ;
 int set_zval_property (int *,char*,int *) ;
 int strlen (char*) ;
 int * zend_hash_str_find (int ,char*,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void model_to_zval_any(zval *ret, xmlNodePtr node)
{
 zval rv, arr, val, keepVal;
 zval* any = ((void*)0);
 char* name = ((void*)0);

 while (node != ((void*)0)) {
  if (get_zval_property(ret, (char*)node->name, &rv) == ((void*)0)) {

   ZVAL_NULL(&val);
   master_to_zval(&val, get_conversion(XSD_ANYXML), node);

   if (any && Z_TYPE_P(any) != IS_ARRAY) {

    array_init(&arr);
    if (name) {
     add_assoc_zval(&arr, name, any);
    } else {
     add_next_index_zval(&arr, any);
    }
    any = &arr;
   }

   if (Z_TYPE(val) == IS_STRING && *Z_STRVAL(val) == '<') {
    name = ((void*)0);
    while (node->next != ((void*)0)) {
     zval val2;

     ZVAL_NULL(&val2);
     master_to_zval(&val2, get_conversion(XSD_ANYXML), node->next);
     if (Z_TYPE(val2) != IS_STRING || *Z_STRVAL(val) != '<') {
      Z_TRY_DELREF(val2);
      break;
     }
     concat_function(&val, &val, &val2);
     zval_ptr_dtor(&val2);
     node = node->next;
    }
   } else {
    name = (char*)node->name;
   }

   if (any == ((void*)0)) {
    if (name) {

     array_init(&arr);
     add_assoc_zval(&arr, name, &val);
     any = &arr;
     name = ((void*)0);
    } else {
     ZVAL_COPY_VALUE(&keepVal, &val);
     any = &keepVal;
    }
   } else {

    if (name) {
     zval *el;
     if ((el = zend_hash_str_find(Z_ARRVAL_P(any), name, strlen(name))) != ((void*)0)) {
      if (Z_TYPE_P(el) != IS_ARRAY) {

       array_init(&arr);
       add_next_index_zval(&arr, el);
       el = &arr;
      }
      add_next_index_zval(el, &val);
     } else {
      add_assoc_zval(any, name, &val);
     }
    } else {
     add_next_index_zval(any, &val);
    }
    name = ((void*)0);
   }
  }
  node = node->next;
 }
 if (any) {
  set_zval_property(ret, name ? name : "any", any);
 }
}
