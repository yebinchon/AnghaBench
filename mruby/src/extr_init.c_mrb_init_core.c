
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;


 int DONE ;
 int mrb_init_array (int *) ;
 int mrb_init_class (int *) ;
 int mrb_init_comparable (int *) ;
 int mrb_init_enumerable (int *) ;
 int mrb_init_exception (int *) ;
 int mrb_init_gc (int *) ;
 int mrb_init_hash (int *) ;
 int mrb_init_kernel (int *) ;
 int mrb_init_mrblib (int *) ;
 int mrb_init_numeric (int *) ;
 int mrb_init_object (int *) ;
 int mrb_init_proc (int *) ;
 int mrb_init_range (int *) ;
 int mrb_init_string (int *) ;
 int mrb_init_symbol (int *) ;
 int mrb_init_symtbl (int *) ;
 int mrb_init_version (int *) ;

void
mrb_init_core(mrb_state *mrb)
{
  mrb_init_symtbl(mrb); DONE;

  mrb_init_class(mrb); DONE;
  mrb_init_object(mrb); DONE;
  mrb_init_kernel(mrb); DONE;
  mrb_init_comparable(mrb); DONE;
  mrb_init_enumerable(mrb); DONE;

  mrb_init_symbol(mrb); DONE;
  mrb_init_string(mrb); DONE;
  mrb_init_exception(mrb); DONE;
  mrb_init_proc(mrb); DONE;
  mrb_init_array(mrb); DONE;
  mrb_init_hash(mrb); DONE;
  mrb_init_numeric(mrb); DONE;
  mrb_init_range(mrb); DONE;
  mrb_init_gc(mrb); DONE;
  mrb_init_version(mrb); DONE;
  mrb_init_mrblib(mrb); DONE;
}
