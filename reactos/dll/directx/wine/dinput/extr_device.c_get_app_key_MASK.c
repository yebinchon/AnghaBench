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
typedef  scalar_t__ HKEY ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ HKEY_CURRENT_USER ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,char) ; 

BOOL FUNC5(HKEY *defkey, HKEY *appkey)
{
    char buffer[MAX_PATH+16];
    DWORD len;

    *appkey = 0;

    /* @@ Wine registry key: HKCU\Software\Wine\DirectInput */
    if (FUNC2(HKEY_CURRENT_USER, "Software\\Wine\\DirectInput", defkey))
        *defkey = 0;

    len = FUNC0(0, buffer, MAX_PATH);
    if (len && len < MAX_PATH)
    {
        HKEY tmpkey;

        /* @@ Wine registry key: HKCU\Software\Wine\AppDefaults\app.exe\DirectInput */
        if (!FUNC2(HKEY_CURRENT_USER, "Software\\Wine\\AppDefaults", &tmpkey))
        {
            char *p, *appname = buffer;
            if ((p = FUNC4(appname, '/'))) appname = p + 1;
            if ((p = FUNC4(appname, '\\'))) appname = p + 1;
            FUNC3(appname, "\\DirectInput");

            if (FUNC2(tmpkey, appname, appkey)) *appkey = 0;
            FUNC1(tmpkey);
        }
    }

    return *defkey || *appkey;
}