
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LONG ;
typedef int HWND ;


 int ADDON_GECKO ;
 int ADDON_MONO ;
 int FALSE ;
 int TRUE ;
 int WARN (char*,int ) ;
 int debugstr_w (char const*) ;
 int install_addon (int ,int ) ;
 int strcmpW (char const*,char const*) ;

__attribute__((used)) static LONG start_params(const WCHAR *params, HWND hwnd_parent)
{
    static const WCHAR install_geckoW[] = {'i','n','s','t','a','l','l','_','g','e','c','k','o',0};
    static const WCHAR install_monoW[] = {'i','n','s','t','a','l','l','_','m','o','n','o',0};

    if(!params)
        return FALSE;

    if(!strcmpW(params, install_geckoW)) {
        install_addon(ADDON_GECKO, hwnd_parent);
        return TRUE;
    }

    if(!strcmpW(params, install_monoW)) {
        install_addon(ADDON_MONO, hwnd_parent);
        return TRUE;
    }

    WARN("unknown param %s\n", debugstr_w(params));
    return FALSE;
}
