
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct mrb_io {scalar_t__ fd; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int E_IO_ERROR ;
 int LSTAT (char*,struct stat*) ;
 int RSTRING_CSTR (int *,int ) ;
 int fstat (scalar_t__,struct stat*) ;
 int mrb_class_get (int *,char*) ;
 scalar_t__ mrb_data_get_ptr (int *,int ,int *) ;
 int mrb_io_type ;
 int mrb_locale_free (char*) ;
 char* mrb_locale_from_utf8 (int ,int) ;
 scalar_t__ mrb_obj_is_kind_of (int *,int ,int ) ;
 int mrb_raise (int *,int ,char*) ;
 int stat (char*,struct stat*) ;

__attribute__((used)) static int
mrb_stat0(mrb_state *mrb, mrb_value obj, struct stat *st, int do_lstat)
{
  if (mrb_obj_is_kind_of(mrb, obj, mrb_class_get(mrb, "IO"))) {
    struct mrb_io *fptr;
    fptr = (struct mrb_io *)mrb_data_get_ptr(mrb, obj, &mrb_io_type);

    if (fptr && fptr->fd >= 0) {
      return fstat(fptr->fd, st);
    }

    mrb_raise(mrb, E_IO_ERROR, "closed stream");
    return -1;
  }
  else {
    char *path = mrb_locale_from_utf8(RSTRING_CSTR(mrb, obj), -1);
    int ret;
    if (do_lstat) {
      ret = LSTAT(path, st);
    } else {
      ret = stat(path, st);
    }
    mrb_locale_free(path);
    return ret;
  }
}
