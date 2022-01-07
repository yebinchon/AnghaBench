
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dbg (char*,scalar_t__) ;
 scalar_t__ pid_file ;
 int unlink (scalar_t__) ;

__attribute__((used)) static void remove_pid_file(void)
{
 if (pid_file) {
  dbg("removing pid file %s", pid_file);
  unlink(pid_file);
 }
}
