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
typedef  int /*<<< orphan*/  buffer ;
typedef  scalar_t__ HKEY ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,char const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

BOOL FUNC6(const char* name)
{
    static const char disabled_str[] = "disabled";
    static const char joystick_key[] = "Joysticks";
    char buffer[MAX_PATH];
    HKEY hkey, appkey, temp;
    BOOL do_disable = FALSE;

    FUNC3(&hkey, &appkey);

    /* Joystick settings are in the 'joysticks' subkey */
    if (appkey)
    {
        if (FUNC1(appkey, joystick_key, &temp)) temp = 0;
        FUNC0(appkey);
        appkey = temp;
    }
    if (hkey)
    {
        if (FUNC1(hkey, joystick_key, &temp)) temp = 0;
        FUNC0(hkey);
        hkey = temp;
    }

    /* Look for the "controllername"="disabled" key */
    if (!FUNC4(hkey, appkey, name, buffer, sizeof(buffer)))
        if (!FUNC5(disabled_str, buffer))
        {
            FUNC2("Disabling joystick '%s' based on registry key.\n", name);
            do_disable = TRUE;
        }

    if (appkey) FUNC0(appkey);
    if (hkey)   FUNC0(hkey);

    return do_disable;
}