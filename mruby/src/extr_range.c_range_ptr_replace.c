
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RRange {int dummy; } ;
struct RBasic {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_bool ;


 int mrb_write_barrier (int *,struct RBasic*) ;
 int range_ptr_init (int *,struct RRange*,int ,int ,int ) ;

__attribute__((used)) static void
range_ptr_replace(mrb_state *mrb, struct RRange *r, mrb_value beg, mrb_value end, mrb_bool excl)
{
  range_ptr_init(mrb, r, beg, end, excl);
  mrb_write_barrier(mrb, (struct RBasic*)r);
}
