
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct dstr {int array; int member_0; } ;
typedef int HWND ;
typedef int * HANDLE ;
typedef scalar_t__ DWORD ;


 int CloseHandle (int *) ;
 scalar_t__ GetCurrentProcessId () ;
 int GetProcessImageFileNameW (int *,int *,int) ;
 int GetWindowThreadProcessId (int ,scalar_t__*) ;
 int MAX_PATH ;
 int PROCESS_QUERY_LIMITED_INFORMATION ;
 int dstr_copy (struct dstr*,char*) ;
 int dstr_free (struct dstr*) ;
 int dstr_from_wcs (struct dstr*,int *) ;
 int * open_process (int ,int,scalar_t__) ;
 char* strrchr (int ,char) ;

bool get_window_exe(struct dstr *name, HWND window)
{
 wchar_t wname[MAX_PATH];
 struct dstr temp = {0};
 bool success = 0;
 HANDLE process = ((void*)0);
 char *slash;
 DWORD id;

 GetWindowThreadProcessId(window, &id);
 if (id == GetCurrentProcessId())
  return 0;

 process = open_process(PROCESS_QUERY_LIMITED_INFORMATION, 0, id);
 if (!process)
  goto fail;

 if (!GetProcessImageFileNameW(process, wname, MAX_PATH))
  goto fail;

 dstr_from_wcs(&temp, wname);
 slash = strrchr(temp.array, '\\');
 if (!slash)
  goto fail;

 dstr_copy(name, slash + 1);
 success = 1;

fail:
 if (!success)
  dstr_copy(name, "unknown");

 dstr_free(&temp);
 CloseHandle(process);
 return 1;
}
