
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_4__ {scalar_t__ gray_list; } ;
typedef TYPE_1__ mrb_gc ;


 scalar_t__ gc_gray_mark (int *,TYPE_1__*,scalar_t__) ;

__attribute__((used)) static size_t
incremental_marking_phase(mrb_state *mrb, mrb_gc *gc, size_t limit)
{
  size_t tried_marks = 0;

  while (gc->gray_list && tried_marks < limit) {
    tried_marks += gc_gray_mark(mrb, gc, gc->gray_list);
  }

  return tried_marks;
}
