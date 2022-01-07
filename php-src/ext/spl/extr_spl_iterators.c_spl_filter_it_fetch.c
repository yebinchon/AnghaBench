
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
struct TYPE_10__ {TYPE_5__* iterator; } ;
struct TYPE_11__ {int ce; } ;
struct TYPE_12__ {TYPE_2__ inner; TYPE_3__ std; } ;
typedef TYPE_4__ spl_dual_it_object ;
struct TYPE_13__ {TYPE_1__* funcs; } ;
struct TYPE_9__ {int (* move_forward ) (TYPE_5__*) ;} ;


 scalar_t__ EG (int ) ;
 scalar_t__ IS_UNDEF ;
 scalar_t__ SUCCESS ;
 int Z_OBJ_P (int *) ;
 scalar_t__ Z_TYPE (int ) ;
 int exception ;
 scalar_t__ spl_dual_it_fetch (TYPE_4__*,int) ;
 int spl_dual_it_free (TYPE_4__*) ;
 int stub1 (TYPE_5__*) ;
 int zend_call_method_with_0_params (int ,int ,int *,char*,int *) ;
 scalar_t__ zend_is_true (int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static inline void spl_filter_it_fetch(zval *zthis, spl_dual_it_object *intern)
{
 zval retval;

 while (spl_dual_it_fetch(intern, 1) == SUCCESS) {
  zend_call_method_with_0_params(Z_OBJ_P(zthis), intern->std.ce, ((void*)0), "accept", &retval);
  if (Z_TYPE(retval) != IS_UNDEF) {
   if (zend_is_true(&retval)) {
    zval_ptr_dtor(&retval);
    return;
   }
   zval_ptr_dtor(&retval);
  }
  if (EG(exception)) {
   return;
  }
  intern->inner.iterator->funcs->move_forward(intern->inner.iterator);
 }
 spl_dual_it_free(intern);
}
