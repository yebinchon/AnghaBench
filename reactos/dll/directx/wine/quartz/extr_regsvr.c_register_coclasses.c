
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regsvr_coclass {int progid_extra; scalar_t__ name; int * progid; int * viprogid; scalar_t__ ips32_tmodel; scalar_t__ ips32; int * ips; scalar_t__ clsid; } ;
typedef int WCHAR ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int BYTE ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CLASSES_ROOT ;
 int HRESULT_FROM_WIN32 (scalar_t__) ;
 int KEY_READ ;
 int KEY_WRITE ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExW (int ,int *,int ,int *,int ,int,int *,int *,int *) ;
 scalar_t__ RegSetValueExA (int ,int *,int ,int ,int const*,scalar_t__) ;
 int S_OK ;
 int StringFromGUID2 (scalar_t__,int *,int) ;
 int * clsid_keyname ;
 int * ips32_keyname ;
 int ips_keyname ;
 scalar_t__ lstrlenA (scalar_t__) ;
 int progid_keyname ;
 scalar_t__ register_key_defvalueA (int ,int ,int *) ;
 scalar_t__ register_progid (int *,int *,int *,scalar_t__,int ) ;
 scalar_t__ strlen (scalar_t__) ;
 int * tmodel_valuename ;
 int viprogid_keyname ;

__attribute__((used)) static HRESULT register_coclasses(struct regsvr_coclass const *list)
{
    LONG res = ERROR_SUCCESS;
    HKEY coclass_key;

    res = RegCreateKeyExW(HKEY_CLASSES_ROOT, clsid_keyname, 0, ((void*)0), 0,
     KEY_READ | KEY_WRITE, ((void*)0), &coclass_key, ((void*)0));
    if (res != ERROR_SUCCESS) goto error_return;

    for (; res == ERROR_SUCCESS && list->clsid; ++list) {
 WCHAR buf[39];
 HKEY clsid_key;

 StringFromGUID2(list->clsid, buf, 39);
 res = RegCreateKeyExW(coclass_key, buf, 0, ((void*)0), 0,
         KEY_READ | KEY_WRITE, ((void*)0), &clsid_key, ((void*)0));
 if (res != ERROR_SUCCESS) goto error_close_coclass_key;

 if (list->name) {
            res = RegSetValueExA(clsid_key, ((void*)0), 0, REG_SZ, (const BYTE*)list->name,
     strlen(list->name) + 1);
     if (res != ERROR_SUCCESS) goto error_close_clsid_key;
 }

 if (list->ips) {
     res = register_key_defvalueA(clsid_key, ips_keyname, list->ips);
     if (res != ERROR_SUCCESS) goto error_close_clsid_key;
 }

 if (list->ips32) {
     HKEY ips32_key;

     res = RegCreateKeyExW(clsid_key, ips32_keyname, 0, ((void*)0), 0,
      KEY_READ | KEY_WRITE, ((void*)0),
      &ips32_key, ((void*)0));
     if (res != ERROR_SUCCESS) goto error_close_clsid_key;

            res = RegSetValueExA(ips32_key, ((void*)0), 0, REG_SZ, (const BYTE*)list->ips32,
     lstrlenA(list->ips32) + 1);
     if (res == ERROR_SUCCESS && list->ips32_tmodel)
  res = RegSetValueExA(ips32_key, tmodel_valuename, 0, REG_SZ,
                                     (const BYTE*)list->ips32_tmodel,
         strlen(list->ips32_tmodel) + 1);
     RegCloseKey(ips32_key);
     if (res != ERROR_SUCCESS) goto error_close_clsid_key;
 }

 if (list->progid) {
     res = register_key_defvalueA(clsid_key, progid_keyname,
      list->progid);
     if (res != ERROR_SUCCESS) goto error_close_clsid_key;

     res = register_progid(buf, list->progid, ((void*)0),
      list->name, list->progid_extra);
     if (res != ERROR_SUCCESS) goto error_close_clsid_key;
 }

 if (list->viprogid) {
     res = register_key_defvalueA(clsid_key, viprogid_keyname,
      list->viprogid);
     if (res != ERROR_SUCCESS) goto error_close_clsid_key;

     res = register_progid(buf, list->viprogid, list->progid,
      list->name, list->progid_extra);
     if (res != ERROR_SUCCESS) goto error_close_clsid_key;
 }

    error_close_clsid_key:
 RegCloseKey(clsid_key);
    }

error_close_coclass_key:
    RegCloseKey(coclass_key);
error_return:
    return res != ERROR_SUCCESS ? HRESULT_FROM_WIN32(res) : S_OK;
}
