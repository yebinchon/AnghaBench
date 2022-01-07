
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key_name ;
typedef int STDAPI ;


 int HKEY_LOCAL_MACHINE ;
 int MB_ICONSTOP ;
 int MB_OK ;
 int MessageBox (int *,char*,char*,int) ;
 scalar_t__ RegDeleteKey (int ,char*) ;
 int SELFREG_E_TYPELIB ;
 int S_OK ;
 int _snprintf (char*,int,char*,int ) ;
 int event_source ;

STDAPI
DllUnregisterServer(void)
{
 char key_name[400];






 _snprintf(key_name, sizeof(key_name),
     "SYSTEM\\CurrentControlSet\\Services\\EventLog\\Application\\%s",
     event_source);
 if (RegDeleteKey(HKEY_LOCAL_MACHINE, key_name))
 {
  MessageBox(((void*)0), "Could not delete the registry key.", "PostgreSQL error", MB_OK | MB_ICONSTOP);
  return SELFREG_E_TYPELIB;
 }
 return S_OK;
}
