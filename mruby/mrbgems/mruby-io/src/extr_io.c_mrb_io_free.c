
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_io {int dummy; } ;
typedef int mrb_state ;


 int TRUE ;
 int fptr_finalize (int *,struct mrb_io*,int ) ;
 int mrb_free (int *,struct mrb_io*) ;

__attribute__((used)) static void
mrb_io_free(mrb_state *mrb, void *ptr)
{
  struct mrb_io *io = (struct mrb_io *)ptr;
  if (io != ((void*)0)) {
    fptr_finalize(mrb, io, TRUE);
    mrb_free(mrb, io);
  }
}
