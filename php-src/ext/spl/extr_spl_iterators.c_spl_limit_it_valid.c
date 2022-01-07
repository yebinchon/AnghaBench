
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int count; scalar_t__ offset; } ;
struct TYPE_9__ {TYPE_2__ limit; } ;
struct TYPE_7__ {scalar_t__ pos; } ;
struct TYPE_10__ {TYPE_3__ u; TYPE_1__ current; } ;
typedef TYPE_4__ spl_dual_it_object ;


 int FAILURE ;
 int spl_dual_it_valid (TYPE_4__*) ;

__attribute__((used)) static inline int spl_limit_it_valid(spl_dual_it_object *intern)
{

 if (intern->u.limit.count != -1 && intern->current.pos >= intern->u.limit.offset + intern->u.limit.count) {
  return FAILURE;
 } else {
  return spl_dual_it_valid(intern);
 }
}
