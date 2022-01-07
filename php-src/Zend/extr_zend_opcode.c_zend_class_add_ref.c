
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {int ce_flags; int refcount; } ;
typedef TYPE_1__ zend_class_entry ;


 int ZEND_ACC_IMMUTABLE ;
 TYPE_1__* Z_PTR_P (int *) ;

void zend_class_add_ref(zval *zv)
{
 zend_class_entry *ce = Z_PTR_P(zv);

 if (!(ce->ce_flags & ZEND_ACC_IMMUTABLE)) {
  ce->refcount++;
 }
}
