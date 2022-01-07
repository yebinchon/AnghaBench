
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_6__ {struct TYPE_6__* parent; int * str; int flags; struct TYPE_6__* child; } ;
typedef TYPE_1__ phpdbg_watch_element ;
typedef int Bucket ;


 int FAILURE ;
 scalar_t__ IS_ARRAY ;
 scalar_t__ IS_OBJECT ;
 int PHPDBG_WATCH_IMPLICIT ;
 int PHPDBG_WATCH_SIMPLE ;
 int SUCCESS ;
 scalar_t__ ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int ZVAL_DEREF (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 TYPE_1__* ecalloc (int,int) ;
 int phpdbg_add_bucket_watch_element (int *,TYPE_1__*) ;
 int phpdbg_add_ht_watch_element (int *,TYPE_1__*) ;
 int * strpprintf (int ,char*,int,int ) ;
 int * zend_string_copy (int *) ;
 int zend_string_release (int *) ;

__attribute__((used)) static int phpdbg_create_array_watchpoint(zval *zv, phpdbg_watch_element *element) {
 phpdbg_watch_element *new;
 zend_string *str;
 zval *orig_zv = zv;

 ZVAL_DEREF(zv);
 if (Z_TYPE_P(zv) != IS_ARRAY && Z_TYPE_P(zv) != IS_OBJECT) {
  return FAILURE;
 }

 new = ecalloc(1, sizeof(phpdbg_watch_element));

 str = strpprintf(0, "%.*s[]", (int) ZSTR_LEN(element->str), ZSTR_VAL(element->str));
 zend_string_release(element->str);
 element->str = str;
 element->flags = PHPDBG_WATCH_IMPLICIT;
 phpdbg_add_bucket_watch_element((Bucket *) orig_zv, element);
 element->child = new;

 new->flags = PHPDBG_WATCH_SIMPLE;
 new->str = zend_string_copy(str);
 new->parent = element;
 phpdbg_add_ht_watch_element(zv, new);
 return SUCCESS;
}
