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
typedef  char WCHAR ;
typedef  scalar_t__ HKEY ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,char const*,char const*,char const*) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static HKEY FUNC8(const WCHAR *device, const WCHAR *username, const WCHAR *guid, BOOL create)
{
    static const WCHAR subkey[] = {
        'S','o','f','t','w','a','r','e','\\',
        'W','i','n','e','\\',
        'D','i','r','e','c','t','I','n','p','u','t','\\',
        'M','a','p','p','i','n','g','s','\\','%','s','\\','%','s','\\','%','s','\0'};
    HKEY hkey;
    WCHAR *keyname;

    keyname = FUNC1(FUNC0(), 0,
        sizeof(WCHAR) * (FUNC5(subkey) + FUNC7(username) + FUNC7(device) + FUNC7(guid)));
    FUNC6(keyname, subkey, username, device, guid);

    /* The key used is HKCU\Software\Wine\DirectInput\Mappings\[username]\[device]\[mapping_guid] */
    if (create) {
        if (FUNC3(HKEY_CURRENT_USER, keyname, &hkey))
            hkey = 0;
    } else if (FUNC4(HKEY_CURRENT_USER, keyname, &hkey))
            hkey = 0;

    FUNC2(FUNC0(), 0, keyname);

    return hkey;
}