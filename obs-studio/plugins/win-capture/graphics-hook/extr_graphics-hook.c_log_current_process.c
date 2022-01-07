
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t DWORD ;


 int GetCurrentProcess () ;
 size_t GetModuleBaseNameA (int ,int *,scalar_t__*,int ) ;
 int MAX_PATH ;
 int hlog (char*,...) ;
 scalar_t__* process_name ;

__attribute__((used)) static inline void log_current_process(void)
{
 DWORD len = GetModuleBaseNameA(GetCurrentProcess(), ((void*)0), process_name,
           MAX_PATH);
 if (len > 0) {
  process_name[len] = 0;
  hlog("Hooked to process: %s", process_name);
 }

 hlog("(half life scientist) everything..  seems to be in order");
}
