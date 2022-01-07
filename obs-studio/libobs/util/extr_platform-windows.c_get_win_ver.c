
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int win10_revision ;
struct win_version_info {int major; int revis; int member_0; } ;
typedef scalar_t__ LSTATUS ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyW (int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,char*,int *,int *,int ,int*) ;
 int WINVER_REG_KEY ;
 int get_dll_ver (char*,struct win_version_info*) ;

void get_win_ver(struct win_version_info *info)
{
 static struct win_version_info ver = {0};
 static bool got_version = 0;

 if (!info)
  return;

 if (!got_version) {
  get_dll_ver(L"kernel32", &ver);
  got_version = 1;

  if (ver.major == 10) {
   HKEY key;
   DWORD size, win10_revision;
   LSTATUS status;

   status = RegOpenKeyW(HKEY_LOCAL_MACHINE, WINVER_REG_KEY,
          &key);
   if (status != ERROR_SUCCESS)
    return;

   size = sizeof(win10_revision);

   status = RegQueryValueExW(key, L"UBR", ((void*)0), ((void*)0),
        (LPBYTE)&win10_revision,
        &size);
   if (status == ERROR_SUCCESS)
    ver.revis = (int)win10_revision > ver.revis
          ? (int)win10_revision
          : ver.revis;

   RegCloseKey(key);
  }
 }

 *info = ver;
}
