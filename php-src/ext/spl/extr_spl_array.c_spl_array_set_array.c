
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zval ;
typedef scalar_t__ zend_object_get_properties_t ;
typedef int zend_long ;
typedef scalar_t__ uint32_t ;
struct TYPE_8__ {TYPE_1__* ce; } ;
struct TYPE_9__ {int ar_flags; scalar_t__ ht_iter; int array; TYPE_2__ std; } ;
typedef TYPE_3__ spl_array_object ;
struct TYPE_10__ {int name; } ;
struct TYPE_7__ {int name; } ;


 scalar_t__ IS_ARRAY ;
 scalar_t__ IS_OBJECT ;
 int SPL_ARRAY_INT_MASK ;
 int SPL_ARRAY_IS_SELF ;
 int SPL_ARRAY_USE_OTHER ;
 int ZSTR_VAL (int ) ;
 int ZVAL_ARR (int *,int ) ;
 int ZVAL_COPY (int *,int *) ;
 int ZVAL_UNDEF (int *) ;
 int Z_ARR_P (int *) ;
 TYPE_6__* Z_OBJCE_P (int *) ;
 scalar_t__ Z_OBJ_HANDLER_P (int *,int ) ;
 int * Z_OBJ_HT_P (int *) ;
 scalar_t__ Z_OBJ_P (int *) ;
 int Z_REFCOUNT_P (int *) ;
 TYPE_3__* Z_SPLARRAY_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int get_properties ;
 int spl_ce_InvalidArgumentException ;
 int spl_handler_ArrayIterator ;
 int spl_handler_ArrayObject ;
 int zend_array_dup (int ) ;
 scalar_t__ zend_std_get_properties ;
 int zend_throw_exception (int ,char*,int ) ;
 int zend_throw_exception_ex (int ,int ,char*,int ,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void spl_array_set_array(zval *object, spl_array_object *intern, zval *array, zend_long ar_flags, int just_array) {
 if (Z_TYPE_P(array) != IS_OBJECT && Z_TYPE_P(array) != IS_ARRAY) {
  zend_throw_exception(spl_ce_InvalidArgumentException, "Passed variable is not an array or object", 0);
  return;
 }

 if (Z_TYPE_P(array) == IS_ARRAY) {
  zval_ptr_dtor(&intern->array);
  if (Z_REFCOUNT_P(array) == 1) {
   ZVAL_COPY(&intern->array, array);
  } else {

   ZVAL_ARR(&intern->array, zend_array_dup(Z_ARR_P(array)));
  }
 } else {
  if (Z_OBJ_HT_P(array) == &spl_handler_ArrayObject || Z_OBJ_HT_P(array) == &spl_handler_ArrayIterator) {
   zval_ptr_dtor(&intern->array);
   if (just_array) {
    spl_array_object *other = Z_SPLARRAY_P(array);
    ar_flags = other->ar_flags & ~SPL_ARRAY_INT_MASK;
   }
   if (Z_OBJ_P(object) == Z_OBJ_P(array)) {
    ar_flags |= SPL_ARRAY_IS_SELF;
    ZVAL_UNDEF(&intern->array);
   } else {
    ar_flags |= SPL_ARRAY_USE_OTHER;
    ZVAL_COPY(&intern->array, array);
   }
  } else {
   zend_object_get_properties_t handler = Z_OBJ_HANDLER_P(array, get_properties);
   if (handler != zend_std_get_properties) {
    zend_throw_exception_ex(spl_ce_InvalidArgumentException, 0,
     "Overloaded object of type %s is not compatible with %s",
     ZSTR_VAL(Z_OBJCE_P(array)->name), ZSTR_VAL(intern->std.ce->name));
    return;
   }
   zval_ptr_dtor(&intern->array);
   ZVAL_COPY(&intern->array, array);
  }
 }

 intern->ar_flags &= ~SPL_ARRAY_IS_SELF & ~SPL_ARRAY_USE_OTHER;
 intern->ar_flags |= ar_flags;
 intern->ht_iter = (uint32_t)-1;
}
