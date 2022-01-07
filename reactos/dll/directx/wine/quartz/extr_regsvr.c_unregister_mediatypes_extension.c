
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regsvr_mediatype_extension {int extension; scalar_t__ majortype; } ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int * HKEY ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 int * HKEY_CLASSES_ROOT ;
 int HRESULT_FROM_WIN32 (scalar_t__) ;
 int KEY_READ ;
 int KEY_WRITE ;
 int RegCloseKey (int *) ;
 scalar_t__ RegDeleteTreeA (int *,int ) ;
 scalar_t__ RegOpenKeyExW (int *,int ,int ,int,int **) ;
 int S_OK ;
 int extensions_keyname ;
 int mediatype_name ;

__attribute__((used)) static HRESULT unregister_mediatypes_extension(struct regsvr_mediatype_extension const *list)
{
    LONG res;
    HKEY mediatype_key;
    HKEY extensions_root_key = ((void*)0);

    res = RegOpenKeyExW(HKEY_CLASSES_ROOT, mediatype_name, 0,
   KEY_READ | KEY_WRITE, &mediatype_key);
    if (res == ERROR_FILE_NOT_FOUND) return S_OK;
    if (res != ERROR_SUCCESS) return HRESULT_FROM_WIN32(res);

    res = RegOpenKeyExW(mediatype_key, extensions_keyname, 0,
   KEY_READ | KEY_WRITE, &extensions_root_key);
    if (res == ERROR_FILE_NOT_FOUND)
 res = ERROR_SUCCESS;
    else if (res == ERROR_SUCCESS)
 for (; res == ERROR_SUCCESS && list->majortype; ++list) {
     res = RegDeleteTreeA(extensions_root_key, list->extension);
     if (res == ERROR_FILE_NOT_FOUND) res = ERROR_SUCCESS;
 }

    RegCloseKey(mediatype_key);
    if (extensions_root_key)
 RegCloseKey(extensions_root_key);

    return res != ERROR_SUCCESS ? HRESULT_FROM_WIN32(res) : S_OK;
}
