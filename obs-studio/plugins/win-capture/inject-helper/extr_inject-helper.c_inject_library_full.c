
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 int INJECT_ERROR_OPEN_PROCESS_FAIL ;
 int PROCESS_ALL_ACCESS ;
 int inject_library (scalar_t__,int const*) ;
 scalar_t__ open_process (int ,int,int ) ;

__attribute__((used)) static inline int inject_library_full(DWORD process_id, const wchar_t *dll)
{
 HANDLE process = open_process(PROCESS_ALL_ACCESS, 0, process_id);
 int ret;

 if (process) {
  ret = inject_library(process, dll);
  CloseHandle(process);
 } else {
  ret = INJECT_ERROR_OPEN_PROCESS_FAIL;
 }

 return ret;
}
