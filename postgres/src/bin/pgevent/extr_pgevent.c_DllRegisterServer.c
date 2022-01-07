
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key_name ;
typedef int buffer ;
typedef int STDAPI ;
typedef int LPBYTE ;
typedef int HMODULE ;
typedef int HKEY ;
typedef int DWORD ;


 int EVENTLOG_ERROR_TYPE ;
 int EVENTLOG_INFORMATION_TYPE ;
 int EVENTLOG_WARNING_TYPE ;
 int GetModuleFileName (int ,char*,int) ;
 int HKEY_LOCAL_MACHINE ;
 int MB_ICONSTOP ;
 int MB_OK ;
 int MessageBox (int *,char*,char*,int) ;
 int REG_DWORD ;
 int REG_EXPAND_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKey (int ,char*,int *) ;
 scalar_t__ RegSetValueEx (int ,char*,int ,int ,int ,int) ;
 int SELFREG_E_TYPELIB ;
 int S_OK ;
 int _MAX_PATH ;
 int _snprintf (char*,int,char*,int ) ;
 int event_source ;
 scalar_t__ g_module ;
 int strlen (char*) ;

STDAPI
DllRegisterServer(void)
{
 HKEY key;
 DWORD data;
 char buffer[_MAX_PATH];
 char key_name[400];


 if (!GetModuleFileName((HMODULE) g_module, buffer, sizeof(buffer)))
 {
  MessageBox(((void*)0), "Could not retrieve DLL filename", "PostgreSQL error", MB_OK | MB_ICONSTOP);
  return SELFREG_E_TYPELIB;
 }





 _snprintf(key_name, sizeof(key_name),
     "SYSTEM\\CurrentControlSet\\Services\\EventLog\\Application\\%s",
     event_source);
 if (RegCreateKey(HKEY_LOCAL_MACHINE, key_name, &key))
 {
  MessageBox(((void*)0), "Could not create the registry key.", "PostgreSQL error", MB_OK | MB_ICONSTOP);
  return SELFREG_E_TYPELIB;
 }


 if (RegSetValueEx(key,
       "EventMessageFile",
       0,
       REG_EXPAND_SZ,
       (LPBYTE) buffer,
       strlen(buffer) + 1))
 {
  MessageBox(((void*)0), "Could not set the event message file.", "PostgreSQL error", MB_OK | MB_ICONSTOP);
  return SELFREG_E_TYPELIB;
 }


 data = EVENTLOG_ERROR_TYPE | EVENTLOG_WARNING_TYPE | EVENTLOG_INFORMATION_TYPE;

 if (RegSetValueEx(key,
       "TypesSupported",
       0,
       REG_DWORD,
       (LPBYTE) &data,
       sizeof(DWORD)))
 {
  MessageBox(((void*)0), "Could not set the supported types.", "PostgreSQL error", MB_OK | MB_ICONSTOP);
  return SELFREG_E_TYPELIB;
 }

 RegCloseKey(key);
 return S_OK;
}
