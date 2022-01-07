
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int mt; } ;
typedef int mrb_state ;


 int kh_destroy (int ,int *,int ) ;
 int mt ;

void
mrb_gc_free_mt(mrb_state *mrb, struct RClass *c)
{
  kh_destroy(mt, mrb, c->mt);
}
