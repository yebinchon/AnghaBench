
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regsvr_mediatype_extension {int * subtype; int * majortype; int extension; } ;
typedef int WCHAR ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int * HKEY ;
typedef int BYTE ;


 int CLSID_AsyncReader ;
 scalar_t__ ERROR_SUCCESS ;
 int * HKEY_CLASSES_ROOT ;
 int HRESULT_FROM_WIN32 (scalar_t__) ;
 int KEY_READ ;
 int KEY_WRITE ;
 int REG_SZ ;
 int RegCloseKey (int *) ;
 scalar_t__ RegCreateKeyExA (int *,int ,int ,int *,int ,int,int *,int **,int *) ;
 scalar_t__ RegCreateKeyExW (int *,int ,int ,int *,int ,int,int *,int **,int *) ;
 scalar_t__ RegSetValueExW (int *,int ,int ,int ,int const*,int) ;
 int S_OK ;
 int StringFromGUID2 (int *,int *,int) ;
 int extensions_keyname ;
 int lstrlenW (int *) ;
 int mediatype_name ;
 int sourcefilter_valuename ;
 int subtype_valuename ;

__attribute__((used)) static HRESULT register_mediatypes_extension(struct regsvr_mediatype_extension const *list)
{
    LONG res = ERROR_SUCCESS;
    HKEY mediatype_key;
    HKEY extensions_root_key = ((void*)0);
    WCHAR buf[39];

    res = RegCreateKeyExW(HKEY_CLASSES_ROOT, mediatype_name, 0, ((void*)0), 0,
     KEY_READ | KEY_WRITE, ((void*)0), &mediatype_key, ((void*)0));
    if (res != ERROR_SUCCESS) return HRESULT_FROM_WIN32(res);

    res = RegCreateKeyExW(mediatype_key, extensions_keyname, 0, ((void*)0), 0,
     KEY_READ | KEY_WRITE, ((void*)0), &extensions_root_key, ((void*)0));
    if (res != ERROR_SUCCESS) goto error_return;

    for (; res == ERROR_SUCCESS && list->majortype; ++list) {
 HKEY extension_key;

 res = RegCreateKeyExA(extensions_root_key, list->extension, 0, ((void*)0), 0,
         KEY_READ | KEY_WRITE, ((void*)0), &extension_key, ((void*)0));
 if (res != ERROR_SUCCESS) break;

 StringFromGUID2(list->majortype, buf, 39);
        res = RegSetValueExW(extension_key, mediatype_name, 0, REG_SZ, (const BYTE*)buf,
        (lstrlenW(buf) + 1) * sizeof(WCHAR));
 if (res != ERROR_SUCCESS) goto error_close_key;

 StringFromGUID2(list->subtype, buf, 39);
        res = RegSetValueExW(extension_key, subtype_valuename, 0, REG_SZ, (const BYTE*)buf,
        (lstrlenW(buf) + 1) * sizeof(WCHAR));
 if (res != ERROR_SUCCESS) goto error_close_key;

 StringFromGUID2(&CLSID_AsyncReader, buf, 39);
        res = RegSetValueExW(extension_key, sourcefilter_valuename, 0, REG_SZ, (const BYTE*)buf,
        (lstrlenW(buf) + 1) * sizeof(WCHAR));
 if (res != ERROR_SUCCESS) goto error_close_key;

error_close_key:
 RegCloseKey(extension_key);
    }

error_return:
    RegCloseKey(mediatype_key);
    if (extensions_root_key)
 RegCloseKey(extensions_root_key);

    return res != ERROR_SUCCESS ? HRESULT_FROM_WIN32(res) : S_OK;
}
