
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct TYPE_2__ {int * referent; } ;
typedef TYPE_1__ zend_weakref ;


 int GC_DEL_FLAGS (int *,int ) ;
 int IS_OBJ_WEAKLY_REFERENCED ;
 scalar_t__ Z_PTR_P (int *) ;

__attribute__((used)) static void zend_weakref_unref(zval *zv) {
 zend_weakref *wr = (zend_weakref*) Z_PTR_P(zv);

 GC_DEL_FLAGS(wr->referent, IS_OBJ_WEAKLY_REFERENCED);

 wr->referent = ((void*)0);
}
