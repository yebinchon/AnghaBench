
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_io {scalar_t__ fd; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int E_IO_ERROR ;
 scalar_t__ mrb_data_get_ptr (int *,int ,int *) ;
 int mrb_io_type ;
 int mrb_raise (int *,int ,char*) ;

__attribute__((used)) static struct mrb_io *
io_get_open_fptr(mrb_state *mrb, mrb_value self)
{
  struct mrb_io *fptr;

  fptr = (struct mrb_io *)mrb_data_get_ptr(mrb, self, &mrb_io_type);
  if (fptr == ((void*)0)) {
    mrb_raise(mrb, E_IO_ERROR, "uninitialized stream.");
  }
  if (fptr->fd < 0) {
    mrb_raise(mrb, E_IO_ERROR, "closed stream.");
  }
  return fptr;
}
