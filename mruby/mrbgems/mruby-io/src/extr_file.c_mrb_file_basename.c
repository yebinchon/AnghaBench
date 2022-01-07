
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int _MAX_DIR ;
 int _MAX_EXT ;
 int _splitpath (char const*,int *,int *,char*,char*) ;
 char* basename (char*) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_str_new_cstr (int *,char*) ;
 char* mrb_str_to_cstr (int *,int ) ;
 int mrb_sys_fail (int *,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static mrb_value
mrb_file_basename(mrb_state *mrb, mrb_value klass)
{
  char *bname, *path;
  mrb_value s;
  mrb_get_args(mrb, "S", &s);
  path = mrb_str_to_cstr(mrb, s);
  if ((bname = basename(path)) == ((void*)0)) {
    mrb_sys_fail(mrb, "basename");
  }
  if (strncmp(bname, "//", 3) == 0) bname[1] = '\0';
  return mrb_str_new_cstr(mrb, bname);

}
