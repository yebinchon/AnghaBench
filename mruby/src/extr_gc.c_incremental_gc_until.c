
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_state ;
typedef scalar_t__ mrb_gc_state ;
struct TYPE_4__ {scalar_t__ state; } ;
typedef TYPE_1__ mrb_gc ;


 int SIZE_MAX ;
 int incremental_gc (int *,TYPE_1__*,int ) ;

__attribute__((used)) static void
incremental_gc_until(mrb_state *mrb, mrb_gc *gc, mrb_gc_state to_state)
{
  do {
    incremental_gc(mrb, gc, SIZE_MAX);
  } while (gc->state != to_state);
}
