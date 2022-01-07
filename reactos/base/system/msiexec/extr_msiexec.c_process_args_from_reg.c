
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int GetProcessHeap () ;
 int HKEY_LOCAL_MACHINE ;
 char* HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,char*) ;
 int InstallRunOnce ;
 scalar_t__ REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyW (int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,char const*,int ,scalar_t__*,int ,scalar_t__*) ;
 int TRUE ;
 int lstrlenW (char*) ;
 int memcpy (char*,char*,int) ;
 int process_args (char*,int*,char***) ;

__attribute__((used)) static BOOL process_args_from_reg( const WCHAR *ident, int *pargc, WCHAR ***pargv )
{
 LONG r;
 HKEY hkey;
 DWORD sz = 0, type = 0;
 WCHAR *buf;
 BOOL ret = FALSE;

 r = RegOpenKeyW(HKEY_LOCAL_MACHINE, InstallRunOnce, &hkey);
 if(r != ERROR_SUCCESS)
  return FALSE;
 r = RegQueryValueExW(hkey, ident, 0, &type, 0, &sz);
 if(r == ERROR_SUCCESS && type == REG_SZ)
 {
  int len = lstrlenW( *pargv[0] );
  if (!(buf = HeapAlloc( GetProcessHeap(), 0, sz + (len + 1) * sizeof(WCHAR) )))
  {
   RegCloseKey( hkey );
   return FALSE;
  }
  memcpy( buf, *pargv[0], len * sizeof(WCHAR) );
  buf[len++] = ' ';
  r = RegQueryValueExW(hkey, ident, 0, &type, (LPBYTE)(buf + len), &sz);
  if( r == ERROR_SUCCESS )
  {
   process_args(buf, pargc, pargv);
   ret = TRUE;
  }
  HeapFree(GetProcessHeap(), 0, buf);
 }
 RegCloseKey(hkey);
 return ret;
}
