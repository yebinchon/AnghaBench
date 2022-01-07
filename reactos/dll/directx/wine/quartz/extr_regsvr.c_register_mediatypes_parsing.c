
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regsvr_mediatype_parsing {scalar_t__* line; int * subtype; int * majortype; } ;
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
 scalar_t__ RegCreateKeyExW (int *,int *,int ,int *,int ,int,int *,int **,int *) ;
 scalar_t__ RegSetValueExA (int *,char*,int ,int ,int const*,int ) ;
 scalar_t__ RegSetValueExW (int *,int ,int ,int ,int const*,int) ;
 int S_OK ;
 int StringFromGUID2 (int *,int *,int) ;
 int lstrlenA (scalar_t__) ;
 int lstrlenW (int *) ;
 int * mediatype_name ;
 int sourcefilter_valuename ;
 int wsprintfA (char*,char*,int) ;

__attribute__((used)) static HRESULT register_mediatypes_parsing(struct regsvr_mediatype_parsing const *list)
{
    LONG res = ERROR_SUCCESS;
    HKEY mediatype_key;
    WCHAR buf[39];
    int i;

    res = RegCreateKeyExW(HKEY_CLASSES_ROOT, mediatype_name, 0, ((void*)0), 0,
     KEY_READ | KEY_WRITE, ((void*)0), &mediatype_key, ((void*)0));
    if (res != ERROR_SUCCESS) return HRESULT_FROM_WIN32(res);

    for (; res == ERROR_SUCCESS && list->majortype; ++list) {
 HKEY majortype_key = ((void*)0);
 HKEY subtype_key = ((void*)0);

 StringFromGUID2(list->majortype, buf, 39);
 res = RegCreateKeyExW(mediatype_key, buf, 0, ((void*)0), 0,
         KEY_READ | KEY_WRITE, ((void*)0), &majortype_key, ((void*)0));
 if (res != ERROR_SUCCESS) goto error_close_keys;

 StringFromGUID2(list->subtype, buf, 39);
 res = RegCreateKeyExW(majortype_key, buf, 0, ((void*)0), 0,
         KEY_READ | KEY_WRITE, ((void*)0), &subtype_key, ((void*)0));
 if (res != ERROR_SUCCESS) goto error_close_keys;

 StringFromGUID2(&CLSID_AsyncReader, buf, 39);
        res = RegSetValueExW(subtype_key, sourcefilter_valuename, 0, REG_SZ, (const BYTE*)buf,
        (lstrlenW(buf) + 1) * sizeof(WCHAR));
 if (res != ERROR_SUCCESS) goto error_close_keys;

 for(i = 0; list->line[i]; i++) {
     char buffer[3];
     wsprintfA(buffer, "%d", i);
            res = RegSetValueExA(subtype_key, buffer, 0, REG_SZ, (const BYTE*)list->line[i],
     lstrlenA(list->line[i]));
     if (res != ERROR_SUCCESS) goto error_close_keys;
 }

error_close_keys:
 if (majortype_key)
     RegCloseKey(majortype_key);
 if (subtype_key)
     RegCloseKey(subtype_key);
    }

    RegCloseKey(mediatype_key);

    return res != ERROR_SUCCESS ? HRESULT_FROM_WIN32(res) : S_OK;
}
