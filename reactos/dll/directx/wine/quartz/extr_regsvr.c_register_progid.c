
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int BYTE ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CLASSES_ROOT ;
 int KEY_READ ;
 int KEY_WRITE ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExA (int ,char const*,int ,int *,int ,int,int *,int *,int *) ;
 scalar_t__ RegSetValueExA (int ,int *,int ,int ,int const*,scalar_t__) ;
 int clsid_keyname ;
 int curver_keyname ;
 scalar_t__ register_key_defvalueA (int ,int ,char const*) ;
 scalar_t__ register_key_defvalueW (int ,int ,int const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static LONG register_progid(
    WCHAR const *clsid,
    char const *progid,
    char const *curver_progid,
    char const *name,
    char const *extra)
{
    LONG res;
    HKEY progid_key;

    res = RegCreateKeyExA(HKEY_CLASSES_ROOT, progid, 0,
     ((void*)0), 0, KEY_READ | KEY_WRITE, ((void*)0),
     &progid_key, ((void*)0));
    if (res != ERROR_SUCCESS) return res;

    if (name) {
        res = RegSetValueExA(progid_key, ((void*)0), 0, REG_SZ, (const BYTE*)name, strlen(name) + 1);
 if (res != ERROR_SUCCESS) goto error_close_progid_key;
    }

    if (clsid) {
 res = register_key_defvalueW(progid_key, clsid_keyname, clsid);
 if (res != ERROR_SUCCESS) goto error_close_progid_key;
    }

    if (curver_progid) {
 res = register_key_defvalueA(progid_key, curver_keyname,
         curver_progid);
 if (res != ERROR_SUCCESS) goto error_close_progid_key;
    }

    if (extra) {
 HKEY extra_key;

 res = RegCreateKeyExA(progid_key, extra, 0,
         ((void*)0), 0, KEY_READ | KEY_WRITE, ((void*)0),
         &extra_key, ((void*)0));
 if (res == ERROR_SUCCESS)
     RegCloseKey(extra_key);
    }

error_close_progid_key:
    RegCloseKey(progid_key);
    return res;
}
