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

/* Variables and functions */
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char const*,char const*,char const*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6(const WCHAR *device, const WCHAR *username, const WCHAR *guid) {
    static const WCHAR subkey[] = {
        'S','o','f','t','w','a','r','e','\\',
        'W','i','n','e','\\',
        'D','i','r','e','c','t','I','n','p','u','t','\\',
        'M','a','p','p','i','n','g','s','\\','%','s','\\','%','s','\\','%','s','\0'};
    WCHAR *keyname;

    keyname = FUNC1(sizeof(WCHAR) * (FUNC3(subkey) + FUNC5(username) + FUNC5(device) + FUNC5(guid)));
    FUNC4(keyname, subkey, username, device, guid);

    /* Remove old key mappings so there will be no overlapping mappings */
    FUNC0(HKEY_CURRENT_USER, keyname);

    FUNC2(keyname);
}