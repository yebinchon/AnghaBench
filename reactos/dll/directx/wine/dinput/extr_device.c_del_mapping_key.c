
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int HKEY_CURRENT_USER ;
 int RegDeleteKeyW (int ,char*) ;
 char* heap_alloc (int) ;
 int heap_free (char*) ;
 int lstrlenW (char const*) ;
 int sprintfW (char*,char const*,char const*,char const*,char const*) ;
 int strlenW (char const*) ;

__attribute__((used)) static void del_mapping_key(const WCHAR *device, const WCHAR *username, const WCHAR *guid) {
    static const WCHAR subkey[] = {
        'S','o','f','t','w','a','r','e','\\',
        'W','i','n','e','\\',
        'D','i','r','e','c','t','I','n','p','u','t','\\',
        'M','a','p','p','i','n','g','s','\\','%','s','\\','%','s','\\','%','s','\0'};
    WCHAR *keyname;

    keyname = heap_alloc(sizeof(WCHAR) * (lstrlenW(subkey) + strlenW(username) + strlenW(device) + strlenW(guid)));
    sprintfW(keyname, subkey, username, device, guid);


    RegDeleteKeyW(HKEY_CURRENT_USER, keyname);

    heap_free(keyname);
}
