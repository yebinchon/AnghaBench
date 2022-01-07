
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int zval ;
struct TYPE_16__ {TYPE_6__* ce; int * iterator; int zobject; } ;
struct TYPE_14__ {TYPE_7__* iterator; } ;
struct TYPE_15__ {TYPE_2__ append; } ;
struct TYPE_17__ {TYPE_4__ inner; TYPE_3__ u; } ;
typedef TYPE_5__ spl_dual_it_object ;
struct TYPE_19__ {TYPE_1__* funcs; } ;
struct TYPE_18__ {int * (* get_iterator ) (TYPE_6__*,int *,int ) ;} ;
struct TYPE_13__ {scalar_t__ (* valid ) (TYPE_7__*) ;int * (* get_current_data ) (TYPE_7__*) ;} ;


 int FAILURE ;
 scalar_t__ SUCCESS ;
 int ZVAL_COPY (int *,int *) ;
 int ZVAL_UNDEF (int *) ;
 int Z_ISUNDEF (int ) ;
 TYPE_6__* Z_OBJCE_P (int *) ;
 int spl_dual_it_free (TYPE_5__*) ;
 int spl_dual_it_rewind (TYPE_5__*) ;
 scalar_t__ stub1 (TYPE_7__*) ;
 int * stub2 (TYPE_7__*) ;
 int * stub3 (TYPE_6__*,int *,int ) ;
 int zend_iterator_dtor (int *) ;
 int zval_ptr_dtor (int *) ;

int spl_append_it_next_iterator(spl_dual_it_object *intern)
{
 spl_dual_it_free(intern);

 if (!Z_ISUNDEF(intern->inner.zobject)) {
  zval_ptr_dtor(&intern->inner.zobject);
  ZVAL_UNDEF(&intern->inner.zobject);
  intern->inner.ce = ((void*)0);
  if (intern->inner.iterator) {
   zend_iterator_dtor(intern->inner.iterator);
   intern->inner.iterator = ((void*)0);
  }
 }
 if (intern->u.append.iterator->funcs->valid(intern->u.append.iterator) == SUCCESS) {
  zval *it;

  it = intern->u.append.iterator->funcs->get_current_data(intern->u.append.iterator);
  ZVAL_COPY(&intern->inner.zobject, it);
  intern->inner.ce = Z_OBJCE_P(it);
  intern->inner.iterator = intern->inner.ce->get_iterator(intern->inner.ce, it, 0);
  spl_dual_it_rewind(intern);
  return SUCCESS;
 } else {
  return FAILURE;
 }
}
