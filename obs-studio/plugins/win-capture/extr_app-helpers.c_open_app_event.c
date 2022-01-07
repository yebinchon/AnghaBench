
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int HANDLE ;
typedef int DWORD ;


 int MAX_PATH ;
 int WTSGetActiveConsoleSessionId () ;
 int _snwprintf (int *,int,int ,int ,int const*,int const*) ;
 int nt_open_event (int *) ;
 int path_format ;

HANDLE open_app_event(const wchar_t *sid, const wchar_t *name)
{
 wchar_t path[MAX_PATH];
 DWORD session_id = WTSGetActiveConsoleSessionId();
 _snwprintf(path, MAX_PATH, path_format, session_id, sid, name);
 return nt_open_event(path);
}
