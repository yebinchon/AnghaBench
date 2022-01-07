
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_stat0 (int *,int ,struct stat*,int) ;

__attribute__((used)) static int
mrb_lstat(mrb_state *mrb, mrb_value obj, struct stat *st)
{
  return mrb_stat0(mrb, obj, st, 1);
}
