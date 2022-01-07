
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int HANDLE ;
typedef int DWORD ;


 int GetLastError () ;
 int create_event_plus_id (int const*,int ) ;
 int hlog (char*,int const*,int ) ;

__attribute__((used)) static HANDLE init_event(const wchar_t *name, DWORD pid)
{
 HANDLE handle = create_event_plus_id(name, pid);
 if (!handle)
  hlog("Failed to get event '%s': %lu", name, GetLastError());
 return handle;
}
