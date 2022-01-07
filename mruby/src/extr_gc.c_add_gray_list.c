
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct RBasic {scalar_t__ tt; struct RBasic* gcnext; } ;
typedef int mrb_state ;
struct TYPE_3__ {struct RBasic* gray_list; } ;
typedef TYPE_1__ mrb_gc ;


 scalar_t__ MRB_TT_MAXDEFINE ;
 int abort () ;
 int paint_gray (struct RBasic*) ;

__attribute__((used)) static inline void
add_gray_list(mrb_state *mrb, mrb_gc *gc, struct RBasic *obj)
{





  paint_gray(obj);
  obj->gcnext = gc->gray_list;
  gc->gray_list = obj;
}
