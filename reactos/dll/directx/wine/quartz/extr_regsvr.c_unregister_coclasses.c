
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regsvr_coclass {scalar_t__ viprogid; scalar_t__ progid; scalar_t__ clsid; } ;
typedef int WCHAR ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int HKEY ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CLASSES_ROOT ;
 int HRESULT_FROM_WIN32 (scalar_t__) ;
 int KEY_READ ;
 int KEY_WRITE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegDeleteTreeA (int ,scalar_t__) ;
 scalar_t__ RegDeleteTreeW (int ,int *) ;
 scalar_t__ RegOpenKeyExW (int ,int ,int ,int,int *) ;
 int S_OK ;
 int StringFromGUID2 (scalar_t__,int *,int) ;
 int clsid_keyname ;

__attribute__((used)) static HRESULT unregister_coclasses(struct regsvr_coclass const *list)
{
    LONG res = ERROR_SUCCESS;
    HKEY coclass_key;

    res = RegOpenKeyExW(HKEY_CLASSES_ROOT, clsid_keyname, 0,
   KEY_READ | KEY_WRITE, &coclass_key);
    if (res == ERROR_FILE_NOT_FOUND) return S_OK;
    if (res != ERROR_SUCCESS) goto error_return;

    for (; res == ERROR_SUCCESS && list->clsid; ++list) {
 WCHAR buf[39];

 StringFromGUID2(list->clsid, buf, 39);
 res = RegDeleteTreeW(coclass_key, buf);
 if (res == ERROR_FILE_NOT_FOUND) res = ERROR_SUCCESS;
 if (res != ERROR_SUCCESS) goto error_close_coclass_key;

 if (list->progid) {
     res = RegDeleteTreeA(HKEY_CLASSES_ROOT, list->progid);
     if (res == ERROR_FILE_NOT_FOUND) res = ERROR_SUCCESS;
     if (res != ERROR_SUCCESS) goto error_close_coclass_key;
 }

 if (list->viprogid) {
     res = RegDeleteTreeA(HKEY_CLASSES_ROOT, list->viprogid);
     if (res == ERROR_FILE_NOT_FOUND) res = ERROR_SUCCESS;
     if (res != ERROR_SUCCESS) goto error_close_coclass_key;
 }
    }

error_close_coclass_key:
    RegCloseKey(coclass_key);
error_return:
    return res != ERROR_SUCCESS ? HRESULT_FROM_WIN32(res) : S_OK;
}
