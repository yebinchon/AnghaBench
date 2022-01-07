
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int mrb_state ;


 int FILE_ALT_SEPARATOR ;
 int FILE_SEPARATOR ;
 int LOCK_EX ;
 int LOCK_NB ;
 int LOCK_SH ;
 int LOCK_UN ;
 int MRB_ARGS_ANY () ;
 int MRB_ARGS_NONE () ;
 int MRB_ARGS_OPT (int) ;
 int MRB_ARGS_REQ (int) ;
 int MRB_ARGS_REST () ;
 int MRB_SET_INSTANCE_TT (struct RClass*,int ) ;
 int MRB_TT_DATA ;
 int NULL_FILE ;
 int PATH_SEPARATOR ;
 struct RClass* mrb_class_get (int *,char*) ;
 struct RClass* mrb_define_class (int *,char*,struct RClass*) ;
 int mrb_define_class_method (int *,struct RClass*,char*,int ,int) ;
 int mrb_define_const (int *,struct RClass*,char*,int ) ;
 int mrb_define_method (int *,struct RClass*,char*,int ,int) ;
 struct RClass* mrb_define_module_under (int *,struct RClass*,char*) ;
 int mrb_file__gethome ;
 int mrb_file__getwd ;
 int mrb_file_basename ;
 int mrb_file_dirname ;
 int mrb_file_flock ;
 int mrb_file_mtime ;
 int mrb_file_realpath ;
 int mrb_file_s_chmod ;
 int mrb_file_s_readlink ;
 int mrb_file_s_rename ;
 int mrb_file_s_symlink ;
 int mrb_file_s_umask ;
 int mrb_file_s_unlink ;
 int mrb_fixnum_value (int ) ;
 int mrb_nil_value () ;
 int mrb_str_new_cstr (int *,int ) ;

void
mrb_init_file(mrb_state *mrb)
{
  struct RClass *io, *file, *cnst;

  io = mrb_class_get(mrb, "IO");
  file = mrb_define_class(mrb, "File", io);
  MRB_SET_INSTANCE_TT(file, MRB_TT_DATA);
  mrb_define_class_method(mrb, file, "umask", mrb_file_s_umask, MRB_ARGS_OPT(1));
  mrb_define_class_method(mrb, file, "delete", mrb_file_s_unlink, MRB_ARGS_ANY());
  mrb_define_class_method(mrb, file, "unlink", mrb_file_s_unlink, MRB_ARGS_ANY());
  mrb_define_class_method(mrb, file, "rename", mrb_file_s_rename, MRB_ARGS_REQ(2));
  mrb_define_class_method(mrb, file, "symlink", mrb_file_s_symlink, MRB_ARGS_REQ(2));
  mrb_define_class_method(mrb, file, "chmod", mrb_file_s_chmod, MRB_ARGS_REQ(1) | MRB_ARGS_REST());
  mrb_define_class_method(mrb, file, "readlink", mrb_file_s_readlink, MRB_ARGS_REQ(1));

  mrb_define_class_method(mrb, file, "dirname", mrb_file_dirname, MRB_ARGS_REQ(1));
  mrb_define_class_method(mrb, file, "basename", mrb_file_basename, MRB_ARGS_REQ(1));
  mrb_define_class_method(mrb, file, "realpath", mrb_file_realpath, MRB_ARGS_REQ(1)|MRB_ARGS_OPT(1));
  mrb_define_class_method(mrb, file, "_getwd", mrb_file__getwd, MRB_ARGS_NONE());
  mrb_define_class_method(mrb, file, "_gethome", mrb_file__gethome, MRB_ARGS_OPT(1));

  mrb_define_method(mrb, file, "flock", mrb_file_flock, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, file, "mtime", mrb_file_mtime, MRB_ARGS_NONE());

  cnst = mrb_define_module_under(mrb, file, "Constants");
  mrb_define_const(mrb, cnst, "LOCK_SH", mrb_fixnum_value(LOCK_SH));
  mrb_define_const(mrb, cnst, "LOCK_EX", mrb_fixnum_value(LOCK_EX));
  mrb_define_const(mrb, cnst, "LOCK_UN", mrb_fixnum_value(LOCK_UN));
  mrb_define_const(mrb, cnst, "LOCK_NB", mrb_fixnum_value(LOCK_NB));
  mrb_define_const(mrb, cnst, "SEPARATOR", mrb_str_new_cstr(mrb, FILE_SEPARATOR));
  mrb_define_const(mrb, cnst, "PATH_SEPARATOR", mrb_str_new_cstr(mrb, PATH_SEPARATOR));



  mrb_define_const(mrb, cnst, "ALT_SEPARATOR", mrb_nil_value());

  mrb_define_const(mrb, cnst, "NULL", mrb_str_new_cstr(mrb, NULL_FILE));

}
