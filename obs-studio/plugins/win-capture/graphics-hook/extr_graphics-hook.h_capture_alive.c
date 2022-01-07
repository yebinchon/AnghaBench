
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ GetLastError () ;
 scalar_t__ OpenMutexW (int ,int,int ) ;
 int SYNCHRONIZE ;
 int keepalive_name ;

__attribute__((used)) static inline bool capture_alive(void)
{
 HANDLE handle = OpenMutexW(SYNCHRONIZE, 0, keepalive_name);
 CloseHandle(handle);

 if (handle)
  return 1;

 return GetLastError() != ERROR_FILE_NOT_FOUND;
}
