
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_5__* iterator; } ;
struct TYPE_8__ {scalar_t__ pos; } ;
struct TYPE_11__ {TYPE_3__ inner; TYPE_1__ current; } ;
typedef TYPE_4__ spl_dual_it_object ;
struct TYPE_12__ {TYPE_2__* funcs; } ;
struct TYPE_9__ {int (* rewind ) (TYPE_5__*) ;} ;


 int spl_dual_it_free (TYPE_4__*) ;
 int stub1 (TYPE_5__*) ;

__attribute__((used)) static inline void spl_dual_it_rewind(spl_dual_it_object *intern)
{
 spl_dual_it_free(intern);
 intern->current.pos = 0;
 if (intern->inner.iterator && intern->inner.iterator->funcs->rewind) {
  intern->inner.iterator->funcs->rewind(intern->inner.iterator);
 }
}
