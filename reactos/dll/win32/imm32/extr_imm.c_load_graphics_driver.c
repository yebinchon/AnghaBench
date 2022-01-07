
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;
typedef int key_pathW ;
typedef char WCHAR ;
typedef int UINT ;
typedef int HMODULE ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BYTE ;


 scalar_t__ ARRAY_SIZE (char const*) ;
 int GetDesktopWindow () ;
 int GetPropW (int ,char const*) ;
 int GlobalGetAtomNameW (int ,char*,int) ;
 int HKEY_LOCAL_MACHINE ;
 int HandleToULong (int ) ;
 int LoadLibraryW (char*) ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyW (int ,char*,int *) ;
 int RegQueryValueExW (int ,char const*,int *,int *,int *,int*) ;
 int TRACE (char*,int ,int ) ;
 int debugstr_w (char*) ;
 int lstrcatW (char*,char const*) ;
 int lstrlenW (char*) ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static HMODULE load_graphics_driver(void)
{
    static const WCHAR display_device_guid_propW[] = {
        '_','_','w','i','n','e','_','d','i','s','p','l','a','y','_',
        'd','e','v','i','c','e','_','g','u','i','d',0 };
    static const WCHAR key_pathW[] = {
        'S','y','s','t','e','m','\\',
        'C','u','r','r','e','n','t','C','o','n','t','r','o','l','S','e','t','\\',
        'C','o','n','t','r','o','l','\\',
        'V','i','d','e','o','\\','{',0};
    static const WCHAR displayW[] = {'}','\\','0','0','0','0',0};
    static const WCHAR driverW[] = {'G','r','a','p','h','i','c','s','D','r','i','v','e','r',0};

    HMODULE ret = 0;
    HKEY hkey;
    DWORD size;
    WCHAR path[MAX_PATH];
    WCHAR key[ARRAY_SIZE( key_pathW ) + ARRAY_SIZE( displayW ) + 40];
    UINT guid_atom = HandleToULong( GetPropW( GetDesktopWindow(), display_device_guid_propW ));

    if (!guid_atom) return 0;
    memcpy( key, key_pathW, sizeof(key_pathW) );
    if (!GlobalGetAtomNameW( guid_atom, key + lstrlenW(key), 40 )) return 0;
    lstrcatW( key, displayW );
    if (RegOpenKeyW( HKEY_LOCAL_MACHINE, key, &hkey )) return 0;
    size = sizeof(path);
    if (!RegQueryValueExW( hkey, driverW, ((void*)0), ((void*)0), (BYTE *)path, &size )) ret = LoadLibraryW( path );
    RegCloseKey( hkey );
    TRACE( "%s %p\n", debugstr_w(path), ret );
    return ret;
}
