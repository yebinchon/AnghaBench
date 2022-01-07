
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* szExeFile; int th32ProcessID; } ;
typedef char TCHAR ;
typedef int RDebugPid ;
typedef TYPE_1__ PROCESSENTRY32 ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 int FALSE ;
 int MAX_PATH ;
 int free (char*) ;
 int * r_debug_pid_new (char*,int ,int ,char,int ) ;
 char* r_sys_conv_win_to_utf8 (char*) ;
 scalar_t__ w32_OpenProcess (int,int ,int ) ;
 int w32_QueryFullProcessImageName (scalar_t__,int ,char*,int *) ;

__attribute__((used)) static RDebugPid *build_debug_pid(PROCESSENTRY32 *pe) {
 TCHAR image_name[MAX_PATH + 1];
 DWORD length = MAX_PATH;
 RDebugPid *ret;
 char *name;
 HANDLE process = w32_OpenProcess (0x1000,
  FALSE, pe->th32ProcessID);

 *image_name = '\0';
 if (process) {
  if (w32_QueryFullProcessImageName) {
   w32_QueryFullProcessImageName (process, 0, image_name, &length);
  }
  CloseHandle(process);
 }
 if (*image_name) {
  name = r_sys_conv_win_to_utf8 (image_name);
 } else {
  name = r_sys_conv_win_to_utf8 (pe->szExeFile);
 }
 ret = r_debug_pid_new (name, pe->th32ProcessID, 0, 's', 0);
 free (name);
 return ret;
}
