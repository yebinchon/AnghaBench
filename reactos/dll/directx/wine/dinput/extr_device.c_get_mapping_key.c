
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ HKEY ;
typedef scalar_t__ BOOL ;


 int GetProcessHeap () ;
 int HKEY_CURRENT_USER ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 scalar_t__ RegCreateKeyW (int ,char*,scalar_t__*) ;
 scalar_t__ RegOpenKeyW (int ,char*,scalar_t__*) ;
 int lstrlenW (char const*) ;
 int sprintfW (char*,char const*,char const*,char const*,char const*) ;
 int strlenW (char const*) ;

__attribute__((used)) static HKEY get_mapping_key(const WCHAR *device, const WCHAR *username, const WCHAR *guid, BOOL create)
{
    static const WCHAR subkey[] = {
        'S','o','f','t','w','a','r','e','\\',
        'W','i','n','e','\\',
        'D','i','r','e','c','t','I','n','p','u','t','\\',
        'M','a','p','p','i','n','g','s','\\','%','s','\\','%','s','\\','%','s','\0'};
    HKEY hkey;
    WCHAR *keyname;

    keyname = HeapAlloc(GetProcessHeap(), 0,
        sizeof(WCHAR) * (lstrlenW(subkey) + strlenW(username) + strlenW(device) + strlenW(guid)));
    sprintfW(keyname, subkey, username, device, guid);


    if (create) {
        if (RegCreateKeyW(HKEY_CURRENT_USER, keyname, &hkey))
            hkey = 0;
    } else if (RegOpenKeyW(HKEY_CURRENT_USER, keyname, &hkey))
            hkey = 0;

    HeapFree(GetProcessHeap(), 0, keyname);

    return hkey;
}
