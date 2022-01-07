
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_child_s {int fd_stdout; int fd_stderr; int ev_stderr; int ev_stdout; } ;


 int close (int) ;
 int fpm_child_free (struct fpm_child_s*) ;
 int fpm_event_fire (int *) ;

__attribute__((used)) static void fpm_child_close(struct fpm_child_s *child, int in_event_loop)
{
 if (child->fd_stdout != -1) {
  if (in_event_loop) {
   fpm_event_fire(&child->ev_stdout);
  }
  if (child->fd_stdout != -1) {
   close(child->fd_stdout);
  }
 }

 if (child->fd_stderr != -1) {
  if (in_event_loop) {
   fpm_event_fire(&child->ev_stderr);
  }
  if (child->fd_stderr != -1) {
   close(child->fd_stderr);
  }
 }

 fpm_child_free(child);
}
