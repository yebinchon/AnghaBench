#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  key_pathW ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int) ; 

__attribute__((used)) static HMODULE FUNC14(void)
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
    WCHAR key[FUNC0( key_pathW ) + FUNC0( displayW ) + 40];
    UINT guid_atom = FUNC4( FUNC2( FUNC1(), display_device_guid_propW ));

    if (!guid_atom) return 0;
    FUNC13( key, key_pathW, sizeof(key_pathW) );
    if (!FUNC3( guid_atom, key + FUNC12(key), 40 )) return 0;
    FUNC11( key, displayW );
    if (FUNC7( HKEY_LOCAL_MACHINE, key, &hkey )) return 0;
    size = sizeof(path);
    if (!FUNC8( hkey, driverW, NULL, NULL, (BYTE *)path, &size )) ret = FUNC5( path );
    FUNC6( hkey );
    FUNC9( "%s %p\n", FUNC10(path), ret );
    return ret;
}