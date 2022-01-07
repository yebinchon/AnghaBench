
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int E_NOTIMP_ERROR ;
 scalar_t__ S_ISLNK (int ) ;
 int mrb_false_value () ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_lstat (int *,int ,struct stat*) ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_true_value () ;

mrb_value
mrb_filetest_s_symlink_p(mrb_state *mrb, mrb_value klass)
{
  return mrb_false_value();

}
