#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mrb_io {int fd; int fd2; int pid; scalar_t__ is_socket; } ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINTR ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PROCESS_QUERY_INFORMATION ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(mrb_state *mrb, struct mrb_io *fptr, int quiet)
{
  int saved_errno = 0;

  if (fptr == NULL) {
    return;
  }

  if (fptr->fd > 2) {
#ifdef _WIN32
    if (fptr->is_socket) {
      if (closesocket(fptr->fd) != 0) {
        saved_errno = WSAGetLastError();
      }
      fptr->fd = -1;
    }
#endif
    if (fptr->fd != -1) {
      if (FUNC5(fptr->fd) == -1) {
        saved_errno = errno;
      }
    }
    fptr->fd = -1;
  }

  if (fptr->fd2 > 2) {
    if (FUNC5(fptr->fd2) == -1) {
      if (saved_errno == 0) {
        saved_errno = errno;
      }
    }
    fptr->fd2 = -1;
  }

  if (fptr->pid != 0) {
#if !defined(_WIN32) && !defined(_WIN64)
    pid_t pid;
    int status;
    do {
      pid = FUNC9(fptr->pid, &status, 0);
    } while (pid == -1 && errno == EINTR);
    if (!quiet && pid == fptr->pid) {
      FUNC7(mrb, pid, status);
    }
#else
    HANDLE h = OpenProcess(PROCESS_QUERY_INFORMATION, FALSE, fptr->pid);
    DWORD status;
    if (WaitForSingleObject(h, INFINITE) && GetExitCodeProcess(h, &status))
      if (!quiet)
        io_set_process_status(mrb, fptr->pid, (int)status);
    CloseHandle(h);
#endif
    fptr->pid = 0;
    /* Note: we don't raise an exception when waitpid(3) fails */
  }

  if (!quiet && saved_errno != 0) {
    errno = saved_errno;
    FUNC8(mrb, "fptr_finalize failed.");
  }
}