
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef scalar_t__ HKEY ;
typedef int BOOL ;


 int FALSE ;
 int MAX_PATH ;
 int RegCloseKey (scalar_t__) ;
 scalar_t__ RegOpenKeyA (scalar_t__,char const*,scalar_t__*) ;
 int TRACE (char*,char const*) ;
 int TRUE ;
 int get_app_key (scalar_t__*,scalar_t__*) ;
 int get_config_key (scalar_t__,scalar_t__,char const*,char*,int) ;
 int strcmp (char const*,char*) ;

BOOL device_disabled_registry(const char* name)
{
    static const char disabled_str[] = "disabled";
    static const char joystick_key[] = "Joysticks";
    char buffer[MAX_PATH];
    HKEY hkey, appkey, temp;
    BOOL do_disable = FALSE;

    get_app_key(&hkey, &appkey);


    if (appkey)
    {
        if (RegOpenKeyA(appkey, joystick_key, &temp)) temp = 0;
        RegCloseKey(appkey);
        appkey = temp;
    }
    if (hkey)
    {
        if (RegOpenKeyA(hkey, joystick_key, &temp)) temp = 0;
        RegCloseKey(hkey);
        hkey = temp;
    }


    if (!get_config_key(hkey, appkey, name, buffer, sizeof(buffer)))
        if (!strcmp(disabled_str, buffer))
        {
            TRACE("Disabling joystick '%s' based on registry key.\n", name);
            do_disable = TRUE;
        }

    if (appkey) RegCloseKey(appkey);
    if (hkey) RegCloseKey(hkey);

    return do_disable;
}
