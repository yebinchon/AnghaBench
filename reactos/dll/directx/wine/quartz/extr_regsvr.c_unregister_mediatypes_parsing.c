
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regsvr_mediatype_parsing {scalar_t__ subtype; scalar_t__ majortype; } ;
typedef int WCHAR ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int HKEY ;


 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CLASSES_ROOT ;
 int HRESULT_FROM_WIN32 (scalar_t__) ;
 int KEY_READ ;
 int KEY_WRITE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegDeleteKeyW (int ,int ) ;
 scalar_t__ RegDeleteTreeW (int ,int *) ;
 scalar_t__ RegOpenKeyExW (int ,int *,int ,int,int *) ;
 int S_OK ;
 int StringFromGUID2 (scalar_t__,int *,int) ;
 int * mediatype_name ;

__attribute__((used)) static HRESULT unregister_mediatypes_parsing(struct regsvr_mediatype_parsing const *list)
{
    LONG res;
    HKEY mediatype_key;
    HKEY majortype_key;
    WCHAR buf[39];

    res = RegOpenKeyExW(HKEY_CLASSES_ROOT, mediatype_name, 0,
   KEY_READ | KEY_WRITE, &mediatype_key);
    if (res == ERROR_FILE_NOT_FOUND) return S_OK;
    if (res != ERROR_SUCCESS) return HRESULT_FROM_WIN32(res);

    for (; res == ERROR_SUCCESS && list->majortype; ++list) {
 StringFromGUID2(list->majortype, buf, 39);
 res = RegOpenKeyExW(mediatype_key, buf, 0,
   KEY_READ | KEY_WRITE, &majortype_key);
 if (res == ERROR_FILE_NOT_FOUND) {
     res = ERROR_SUCCESS;
     continue;
 }
 if (res != ERROR_SUCCESS) break;

 StringFromGUID2(list->subtype, buf, 39);
 res = RegDeleteTreeW(majortype_key, buf);
     if (res == ERROR_FILE_NOT_FOUND) res = ERROR_SUCCESS;


 res = RegDeleteKeyW(majortype_key, 0);
 if (res == ERROR_ACCESS_DENIED) res = ERROR_SUCCESS;

 RegCloseKey(majortype_key);
    }

    RegCloseKey(mediatype_key);

    return res != ERROR_SUCCESS ? HRESULT_FROM_WIN32(res) : S_OK;
}
