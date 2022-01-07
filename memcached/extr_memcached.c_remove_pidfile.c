
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ unlink (char const*) ;
 int vperror (char*,char const*) ;

__attribute__((used)) static void remove_pidfile(const char *pid_file) {
  if (pid_file == ((void*)0))
      return;

  if (unlink(pid_file) != 0) {
      vperror("Could not remove the pid file %s", pid_file);
  }

}
