
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int GetLastError () ;
 int GetSystemDirectoryA (int ,int ) ;
 int MAX_PATH ;
 int hlog (char*,int ) ;
 int system_path ;

__attribute__((used)) static inline bool init_system_path(void)
{
 UINT ret = GetSystemDirectoryA(system_path, MAX_PATH);
 if (!ret) {
  hlog("Failed to get windows system path: %lu", GetLastError());
  return 0;
 }

 return 1;
}
