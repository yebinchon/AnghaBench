
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {int executable; } ;
struct game_capture {TYPE_1__ config; int process_id; } ;
typedef int HANDLE ;


 int CloseHandle (int ) ;
 int GetLastError () ;
 int MAX_PATH ;
 int PROCESS_ALL_ACCESS ;
 int * _wfullpath (int *,int *,int) ;
 int bfree (int *) ;
 int inject_library (int ,int *) ;
 int open_process (int ,int,int ) ;
 int os_utf8_to_wcs_ptr (char const*,int ,int **) ;
 int warn (char*,...) ;

__attribute__((used)) static inline bool hook_direct(struct game_capture *gc,
          const char *hook_path_rel)
{
 wchar_t hook_path_abs_w[MAX_PATH];
 wchar_t *hook_path_rel_w;
 wchar_t *path_ret;
 HANDLE process;
 int ret;

 os_utf8_to_wcs_ptr(hook_path_rel, 0, &hook_path_rel_w);
 if (!hook_path_rel_w) {
  warn("hook_direct: could not convert string");
  return 0;
 }

 path_ret = _wfullpath(hook_path_abs_w, hook_path_rel_w, MAX_PATH);
 bfree(hook_path_rel_w);

 if (path_ret == ((void*)0)) {
  warn("hook_direct: could not make absolute path");
  return 0;
 }

 process = open_process(PROCESS_ALL_ACCESS, 0, gc->process_id);
 if (!process) {
  warn("hook_direct: could not open process: %s (%lu)",
       gc->config.executable, GetLastError());
  return 0;
 }

 ret = inject_library(process, hook_path_abs_w);
 CloseHandle(process);

 if (ret != 0) {
  warn("hook_direct: inject failed: %d", ret);
  return 0;
 }

 return 1;
}
