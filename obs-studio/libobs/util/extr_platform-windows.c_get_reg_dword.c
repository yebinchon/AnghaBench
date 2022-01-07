
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_dword {int size; scalar_t__ return_value; scalar_t__ status; int member_0; } ;
typedef scalar_t__ LSTATUS ;
typedef int LPCWSTR ;
typedef int LPBYTE ;
typedef int HKEY ;


 scalar_t__ ERROR_SUCCESS ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyEx (int ,int ,int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,int ,int *,int *,int ,int*) ;

void get_reg_dword(HKEY hkey, LPCWSTR sub_key, LPCWSTR value_name,
     struct reg_dword *info)
{
 struct reg_dword reg = {0};
 HKEY key;
 LSTATUS status;

 status = RegOpenKeyEx(hkey, sub_key, 0, KEY_READ, &key);

 if (status != ERROR_SUCCESS) {
  info->status = status;
  info->size = 0;
  info->return_value = 0;
  return;
 }

 reg.size = sizeof(reg.return_value);

 reg.status = RegQueryValueExW(key, value_name, ((void*)0), ((void*)0),
          (LPBYTE)&reg.return_value, &reg.size);

 RegCloseKey(key);

 *info = reg;
}
