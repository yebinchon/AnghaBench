
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_5__* iterator; } ;
struct TYPE_12__ {TYPE_2__ append; } ;
struct TYPE_13__ {TYPE_3__ u; } ;
typedef TYPE_4__ spl_dual_it_object ;
struct TYPE_14__ {TYPE_1__* funcs; } ;
struct TYPE_10__ {int (* move_forward ) (TYPE_5__*) ;} ;


 scalar_t__ SUCCESS ;
 scalar_t__ spl_append_it_next_iterator (TYPE_4__*) ;
 int spl_dual_it_fetch (TYPE_4__*,int ) ;
 scalar_t__ spl_dual_it_valid (TYPE_4__*) ;
 int stub1 (TYPE_5__*) ;

void spl_append_it_fetch(spl_dual_it_object *intern)
{
 while (spl_dual_it_valid(intern) != SUCCESS) {
  intern->u.append.iterator->funcs->move_forward(intern->u.append.iterator);
  if (spl_append_it_next_iterator(intern) != SUCCESS) {
   return;
  }
 }
 spl_dual_it_fetch(intern, 0);
}
