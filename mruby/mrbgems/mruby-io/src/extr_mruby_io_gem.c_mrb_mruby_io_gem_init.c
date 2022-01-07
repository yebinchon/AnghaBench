
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;


 int DONE ;
 int mrb_init_file (int *) ;
 int mrb_init_file_test (int *) ;
 int mrb_init_io (int *) ;

void
mrb_mruby_io_gem_init(mrb_state* mrb)
{
  mrb_init_io(mrb); DONE;
  mrb_init_file(mrb); DONE;
  mrb_init_file_test(mrb); DONE;
}
