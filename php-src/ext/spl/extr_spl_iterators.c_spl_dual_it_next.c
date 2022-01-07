
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int pos; } ;
struct TYPE_9__ {TYPE_5__* iterator; } ;
struct TYPE_11__ {TYPE_3__ current; TYPE_2__ inner; } ;
typedef TYPE_4__ spl_dual_it_object ;
struct TYPE_12__ {TYPE_1__* funcs; } ;
struct TYPE_8__ {int (* move_forward ) (TYPE_5__*) ;} ;


 int spl_dual_it_free (TYPE_4__*) ;
 int stub1 (TYPE_5__*) ;
 int zend_throw_error (int *,char*) ;

__attribute__((used)) static inline void spl_dual_it_next(spl_dual_it_object *intern, int do_free)
{
 if (do_free) {
  spl_dual_it_free(intern);
 } else if (!intern->inner.iterator) {
  zend_throw_error(((void*)0), "The inner constructor wasn't initialized with an iterator instance");
  return;
 }
 intern->inner.iterator->funcs->move_forward(intern->inner.iterator);
 intern->current.pos++;
}
