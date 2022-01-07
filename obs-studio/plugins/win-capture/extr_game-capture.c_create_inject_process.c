
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char wchar_t ;
struct game_capture {int injector_process; int process_id; int thread_id; } ;
typedef int si ;
struct TYPE_6__ {int hProcess; int hThread; int member_0; } ;
struct TYPE_5__ {int cb; int member_0; } ;
typedef TYPE_1__ STARTUPINFO ;
typedef TYPE_2__ PROCESS_INFORMATION ;


 int CREATE_NO_WINDOW ;
 int CloseHandle (int ) ;
 int CreateProcessW (char*,char*,int *,int *,int,int ,int *,int *,TYPE_1__*,TYPE_2__*) ;
 int GetLastError () ;
 int bfree (char*) ;
 int free (char*) ;
 char* malloc (int) ;
 int os_utf8_to_wcs_ptr (char const*,int ,char**) ;
 int swprintf (char*,int,char*,char*,char*,unsigned long,int ) ;
 int use_anticheat (struct game_capture*) ;
 int warn (char*,int ) ;

__attribute__((used)) static inline bool create_inject_process(struct game_capture *gc,
      const char *inject_path,
      const char *hook_dll)
{
 wchar_t *command_line_w = malloc(4096 * sizeof(wchar_t));
 wchar_t *inject_path_w;
 wchar_t *hook_dll_w;
 bool anti_cheat = use_anticheat(gc);
 PROCESS_INFORMATION pi = {0};
 STARTUPINFO si = {0};
 bool success = 0;

 os_utf8_to_wcs_ptr(inject_path, 0, &inject_path_w);
 os_utf8_to_wcs_ptr(hook_dll, 0, &hook_dll_w);

 si.cb = sizeof(si);

 swprintf(command_line_w, 4096, L"\"%s\" \"%s\" %lu %lu", inject_path_w,
   hook_dll_w, (unsigned long)anti_cheat,
   anti_cheat ? gc->thread_id : gc->process_id);

 success = !!CreateProcessW(inject_path_w, command_line_w, ((void*)0), ((void*)0),
       0, CREATE_NO_WINDOW, ((void*)0), ((void*)0), &si,
       &pi);
 if (success) {
  CloseHandle(pi.hThread);
  gc->injector_process = pi.hProcess;
 } else {
  warn("Failed to create inject helper process: %lu",
       GetLastError());
 }

 free(command_line_w);
 bfree(inject_path_w);
 bfree(hook_dll_w);
 return success;
}
