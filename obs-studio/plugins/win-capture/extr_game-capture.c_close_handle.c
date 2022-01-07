
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ INVALID_HANDLE_VALUE ;

__attribute__((used)) static void close_handle(HANDLE *p_handle)
{
 HANDLE handle = *p_handle;
 if (handle) {
  if (handle != INVALID_HANDLE_VALUE)
   CloseHandle(handle);
  *p_handle = ((void*)0);
 }
}
