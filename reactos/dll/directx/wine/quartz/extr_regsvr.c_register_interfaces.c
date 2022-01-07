
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regsvr_interface {scalar_t__ num_methods; scalar_t__ ps_clsid32; scalar_t__ ps_clsid; scalar_t__ base_iid; scalar_t__ name; scalar_t__ iid; } ;
typedef char WCHAR ;
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
 scalar_t__ RegCreateKeyExW (int ,char*,int ,int *,int ,int,int *,int *,int *) ;
 scalar_t__ RegSetValueExA (int ,int *,int ,int ,int const*,scalar_t__) ;
 scalar_t__ RegSetValueExW (int ,int *,int ,int ,int const*,int) ;
 int S_OK ;
 int StringFromGUID2 (scalar_t__,char*,int) ;
 int base_ifa_keyname ;
 char* interface_keyname ;
 int lstrlenW (char*) ;
 char* num_methods_keyname ;
 int ps_clsid32_keyname ;
 int ps_clsid_keyname ;
 scalar_t__ register_key_guid (int ,int ,scalar_t__) ;
 int sprintfW (char*,char const*,scalar_t__) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static HRESULT register_interfaces(struct regsvr_interface const *list)
{
    LONG res = ERROR_SUCCESS;
    HKEY interface_key;

    res = RegCreateKeyExW(HKEY_CLASSES_ROOT, interface_keyname, 0, ((void*)0), 0,
     KEY_READ | KEY_WRITE, ((void*)0), &interface_key, ((void*)0));
    if (res != ERROR_SUCCESS) goto error_return;

    for (; res == ERROR_SUCCESS && list->iid; ++list) {
 WCHAR buf[39];
 HKEY iid_key;

 StringFromGUID2(list->iid, buf, 39);
 res = RegCreateKeyExW(interface_key, buf, 0, ((void*)0), 0,
         KEY_READ | KEY_WRITE, ((void*)0), &iid_key, ((void*)0));
 if (res != ERROR_SUCCESS) goto error_close_interface_key;

 if (list->name) {
            res = RegSetValueExA(iid_key, ((void*)0), 0, REG_SZ, (const BYTE*)list->name,
     strlen(list->name) + 1);
     if (res != ERROR_SUCCESS) goto error_close_iid_key;
 }

 if (list->base_iid) {
     res = register_key_guid(iid_key, base_ifa_keyname, list->base_iid);
     if (res != ERROR_SUCCESS) goto error_close_iid_key;
 }

 if (0 <= list->num_methods) {
     static const WCHAR fmt[] = { '%', 'd', 0 };
     HKEY key;

     res = RegCreateKeyExW(iid_key, num_methods_keyname, 0, ((void*)0), 0,
      KEY_READ | KEY_WRITE, ((void*)0), &key, ((void*)0));
     if (res != ERROR_SUCCESS) goto error_close_iid_key;

     sprintfW(buf, fmt, list->num_methods);
            res = RegSetValueExW(key, ((void*)0), 0, REG_SZ, (const BYTE*)buf,
     (lstrlenW(buf) + 1) * sizeof(WCHAR));
     RegCloseKey(key);

     if (res != ERROR_SUCCESS) goto error_close_iid_key;
 }

 if (list->ps_clsid) {
     res = register_key_guid(iid_key, ps_clsid_keyname, list->ps_clsid);
     if (res != ERROR_SUCCESS) goto error_close_iid_key;
 }

 if (list->ps_clsid32) {
     res = register_key_guid(iid_key, ps_clsid32_keyname, list->ps_clsid32);
     if (res != ERROR_SUCCESS) goto error_close_iid_key;
 }

    error_close_iid_key:
 RegCloseKey(iid_key);
    }

error_close_interface_key:
    RegCloseKey(interface_key);
error_return:
    return res != ERROR_SUCCESS ? HRESULT_FROM_WIN32(res) : S_OK;
}
