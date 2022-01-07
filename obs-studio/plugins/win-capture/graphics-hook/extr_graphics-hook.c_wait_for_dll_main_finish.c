
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 int WaitForSingleObject (scalar_t__,int) ;

__attribute__((used)) static inline void wait_for_dll_main_finish(HANDLE thread_handle)
{
 if (thread_handle) {
  WaitForSingleObject(thread_handle, 100);
  CloseHandle(thread_handle);
 }
}
