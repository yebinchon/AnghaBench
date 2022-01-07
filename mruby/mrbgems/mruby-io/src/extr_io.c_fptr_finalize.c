
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_io {int fd; int fd2; int pid; scalar_t__ is_socket; } ;
typedef int pid_t ;
typedef int mrb_state ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int CloseHandle (int ) ;
 int EINTR ;
 int FALSE ;
 scalar_t__ GetExitCodeProcess (int ,scalar_t__*) ;
 int INFINITE ;
 int OpenProcess (int ,int ,int) ;
 int PROCESS_QUERY_INFORMATION ;
 int WSAGetLastError () ;
 scalar_t__ WaitForSingleObject (int ,int ) ;
 int close (int) ;
 scalar_t__ closesocket (int) ;
 int errno ;
 int io_set_process_status (int *,int,int) ;
 int mrb_sys_fail (int *,char*) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static void
fptr_finalize(mrb_state *mrb, struct mrb_io *fptr, int quiet)
{
  int saved_errno = 0;

  if (fptr == ((void*)0)) {
    return;
  }

  if (fptr->fd > 2) {
    if (fptr->fd != -1) {
      if (close(fptr->fd) == -1) {
        saved_errno = errno;
      }
    }
    fptr->fd = -1;
  }

  if (fptr->fd2 > 2) {
    if (close(fptr->fd2) == -1) {
      if (saved_errno == 0) {
        saved_errno = errno;
      }
    }
    fptr->fd2 = -1;
  }

  if (fptr->pid != 0) {

    pid_t pid;
    int status;
    do {
      pid = waitpid(fptr->pid, &status, 0);
    } while (pid == -1 && errno == EINTR);
    if (!quiet && pid == fptr->pid) {
      io_set_process_status(mrb, pid, status);
    }
    fptr->pid = 0;

  }

  if (!quiet && saved_errno != 0) {
    errno = saved_errno;
    mrb_sys_fail(mrb, "fptr_finalize failed.");
  }
}
