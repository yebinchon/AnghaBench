
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrbc_args {scalar_t__ outfile; } ;
typedef int mrb_state ;


 int mrb_close (int *) ;
 int mrb_free (int *,void*) ;

__attribute__((used)) static void
cleanup(mrb_state *mrb, struct mrbc_args *args)
{
  mrb_free(mrb, (void*)args->outfile);
  mrb_close(mrb);
}
