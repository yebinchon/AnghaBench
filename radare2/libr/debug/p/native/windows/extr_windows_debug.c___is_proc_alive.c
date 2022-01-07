
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 int GetExitCodeProcess (scalar_t__,scalar_t__*) ;
 int GetExitCodeThread (scalar_t__,scalar_t__*) ;
 scalar_t__ STILL_ACTIVE ;

__attribute__((used)) static bool __is_proc_alive(HANDLE ph) {
 if (ph) {
  DWORD code;
  if (!GetExitCodeProcess (ph, &code)) {
   GetExitCodeThread (ph, &code);
  }
  return code == STILL_ACTIVE;
 }
 return 0;
}
