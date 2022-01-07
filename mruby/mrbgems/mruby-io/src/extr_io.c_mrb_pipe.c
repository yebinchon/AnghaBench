
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;


 scalar_t__ EMFILE ;
 scalar_t__ ENFILE ;
 scalar_t__ errno ;
 int mrb_cloexec_pipe (int *,int*) ;
 int mrb_garbage_collect (int *) ;

__attribute__((used)) static int
mrb_pipe(mrb_state *mrb, int pipes[2])
{
  int ret;
  ret = mrb_cloexec_pipe(mrb, pipes);
  if (ret == -1) {
    if (errno == EMFILE || errno == ENFILE) {
      mrb_garbage_collect(mrb);
      ret = mrb_cloexec_pipe(mrb, pipes);
    }
  }
  return ret;
}
