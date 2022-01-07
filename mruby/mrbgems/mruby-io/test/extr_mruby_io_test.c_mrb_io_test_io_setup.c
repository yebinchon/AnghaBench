
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sun0 ;
struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mode_t ;
typedef int FILE ;


 int AF_UNIX ;
 int E_RUNTIME_ERROR ;
 int SOCK_STREAM ;
 int bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fputs (char*,int *) ;
 int mkstemp (char*) ;
 int mrb_gv_set (int *,int ,int ) ;
 int mrb_intern_cstr (int *,char*) ;
 int mrb_nil_value () ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_raisef (int *,int ,char*,int ,int ) ;
 int mrb_str_new_cstr (int *,char*) ;
 int mrb_true_value () ;
 int snprintf (int ,int,char*,char*) ;
 int socket (int ,int ,int ) ;
 int symlink (char*,char*) ;
 int umask (int) ;
 int unlink (char*) ;

__attribute__((used)) static mrb_value
mrb_io_test_io_setup(mrb_state *mrb, mrb_value self)
{
  char rfname[] = "tmp.mruby-io-test-r.XXXXXXXX";
  char wfname[] = "tmp.mruby-io-test-w.XXXXXXXX";
  char symlinkname[] = "tmp.mruby-io-test-l.XXXXXXXX";
  char socketname[] = "tmp.mruby-io-test-s.XXXXXXXX";
  char msg[] = "mruby io test\n";
  mode_t mask;
  int fd0, fd1;
  FILE *fp;


  int fd2, fd3;
  struct sockaddr_un sun0;


  mask = umask(077);
  fd0 = mkstemp(rfname);
  fd1 = mkstemp(wfname);
  if (fd0 == -1 || fd1 == -1) {
    mrb_raise(mrb, E_RUNTIME_ERROR, "can't create temporary file");
    return mrb_nil_value();
  }
  close(fd0);
  close(fd1);


  fd2 = mkstemp(symlinkname);
  fd3 = mkstemp(socketname);
  if (fd2 == -1 || fd3 == -1) {
    mrb_raise(mrb, E_RUNTIME_ERROR, "can't create temporary file");
    return mrb_nil_value();
  }

  umask(mask);

  mrb_gv_set(mrb, mrb_intern_cstr(mrb, "$mrbtest_io_rfname"), mrb_str_new_cstr(mrb, rfname));
  mrb_gv_set(mrb, mrb_intern_cstr(mrb, "$mrbtest_io_wfname"), mrb_str_new_cstr(mrb, wfname));
  mrb_gv_set(mrb, mrb_intern_cstr(mrb, "$mrbtest_io_symlinkname"), mrb_str_new_cstr(mrb, symlinkname));
  mrb_gv_set(mrb, mrb_intern_cstr(mrb, "$mrbtest_io_socketname"), mrb_str_new_cstr(mrb, socketname));
  mrb_gv_set(mrb, mrb_intern_cstr(mrb, "$mrbtest_io_msg"), mrb_str_new_cstr(mrb, msg));

  fp = fopen(rfname, "wb");
  if (fp == ((void*)0)) {
    mrb_raise(mrb, E_RUNTIME_ERROR, "can't open temporary file");
    return mrb_nil_value();
  }
  fputs(msg, fp);
  fclose(fp);

  fp = fopen(wfname, "wb");
  if (fp == ((void*)0)) {
    mrb_raise(mrb, E_RUNTIME_ERROR, "can't open temporary file");
    return mrb_nil_value();
  }
  fclose(fp);


  unlink(symlinkname);
  close(fd2);
  if (symlink(rfname, symlinkname) == -1) {
    mrb_raise(mrb, E_RUNTIME_ERROR, "can't make a symbolic link");
  }

  unlink(socketname);
  close(fd3);
  fd3 = socket(AF_UNIX, SOCK_STREAM, 0);
  if (fd3 == -1) {
    mrb_raise(mrb, E_RUNTIME_ERROR, "can't make a socket");
  }
  sun0.sun_family = AF_UNIX;
  snprintf(sun0.sun_path, sizeof(sun0.sun_path), "%s", socketname);
  if (bind(fd3, (struct sockaddr *)&sun0, sizeof(sun0)) == -1) {
    mrb_raisef(mrb, E_RUNTIME_ERROR, "can't bind AF_UNIX socket to %s: %d",
               sun0.sun_path,
               errno);
  }
  close(fd3);


  return mrb_true_value();
}
