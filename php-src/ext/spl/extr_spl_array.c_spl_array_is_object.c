
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_bool ;
struct TYPE_4__ {int ar_flags; int array; } ;
typedef TYPE_1__ spl_array_object ;


 scalar_t__ IS_OBJECT ;
 int SPL_ARRAY_IS_SELF ;
 int SPL_ARRAY_USE_OTHER ;
 TYPE_1__* Z_SPLARRAY_P (int *) ;
 scalar_t__ Z_TYPE (int ) ;

__attribute__((used)) static inline zend_bool spl_array_is_object(spl_array_object *intern)
{
 while (intern->ar_flags & SPL_ARRAY_USE_OTHER) {
  intern = Z_SPLARRAY_P(&intern->array);
 }
 return (intern->ar_flags & SPL_ARRAY_IS_SELF) || Z_TYPE(intern->array) == IS_OBJECT;
}
