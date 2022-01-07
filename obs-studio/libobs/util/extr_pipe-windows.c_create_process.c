
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int si ;
struct TYPE_6__ {int hThread; void* hProcess; int member_0; } ;
struct TYPE_5__ {int cb; int dwFlags; void* hStdError; void* hStdOutput; void* hStdInput; int member_0; } ;
typedef TYPE_1__ STARTUPINFOW ;
typedef TYPE_2__ PROCESS_INFORMATION ;
typedef void* HANDLE ;


 int CREATE_NO_WINDOW ;
 int CloseHandle (int ) ;
 int CreateProcessW (int *,int *,int *,int *,int,int ,int *,int *,TYPE_1__*,TYPE_2__*) ;
 int STARTF_FORCEOFFFEEDBACK ;
 int STARTF_USESTDHANDLES ;
 int bfree (int *) ;
 int os_utf8_to_wcs_ptr (char const*,int ,int **) ;

__attribute__((used)) static inline bool create_process(const char *cmd_line, HANDLE stdin_handle,
      HANDLE stdout_handle, HANDLE stderr_handle,
      HANDLE *process)
{
 PROCESS_INFORMATION pi = {0};
 wchar_t *cmd_line_w = ((void*)0);
 STARTUPINFOW si = {0};
 bool success = 0;

 si.cb = sizeof(si);
 si.dwFlags = STARTF_USESTDHANDLES | STARTF_FORCEOFFFEEDBACK;
 si.hStdInput = stdin_handle;
 si.hStdOutput = stdout_handle;
 si.hStdError = stderr_handle;

 os_utf8_to_wcs_ptr(cmd_line, 0, &cmd_line_w);
 if (cmd_line_w) {
  success = !!CreateProcessW(((void*)0), cmd_line_w, ((void*)0), ((void*)0), 1,
        CREATE_NO_WINDOW, ((void*)0), ((void*)0), &si,
        &pi);

  if (success) {
   *process = pi.hProcess;
   CloseHandle(pi.hThread);
  }

  bfree(cmd_line_w);
 }

 return success;
}
