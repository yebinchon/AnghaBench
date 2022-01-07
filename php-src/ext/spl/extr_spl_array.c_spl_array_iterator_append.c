
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int spl_array_object ;
struct TYPE_2__ {int name; } ;


 int ZSTR_VAL (int ) ;
 TYPE_1__* Z_OBJCE_P (int *) ;
 int Z_OBJ_P (int *) ;
 int * Z_SPLARRAY_P (int *) ;
 scalar_t__ spl_array_is_object (int *) ;
 int spl_array_write_dimension (int ,int *,int *) ;
 int zend_throw_error (int *,char*,int ) ;

void spl_array_iterator_append(zval *object, zval *append_value)
{
 spl_array_object *intern = Z_SPLARRAY_P(object);

 if (spl_array_is_object(intern)) {
  zend_throw_error(((void*)0), "Cannot append properties to objects, use %s::offsetSet() instead", ZSTR_VAL(Z_OBJCE_P(object)->name));
  return;
 }

 spl_array_write_dimension(Z_OBJ_P(object), ((void*)0), append_value);
}
