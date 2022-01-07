
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;
typedef int iv_tbl ;


 int iv_foreach (int *,int *,int ,int ) ;
 int iv_mark_i ;

__attribute__((used)) static void
mark_tbl(mrb_state *mrb, iv_tbl *t)
{
  iv_foreach(mrb, t, iv_mark_i, 0);
}
