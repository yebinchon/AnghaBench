
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int VARIANT_FALSE ;
 int VARIANT_TRUE ;
 int WINE_FIXME (char*,int ) ;
 int debugstr_w (char const*) ;
 scalar_t__ strcmpiW (char const*,char const*) ;
 int wshInteractive ;

__attribute__((used)) static BOOL set_host_properties(const WCHAR *prop)
{
    static const WCHAR nologoW[] = {'n','o','l','o','g','o',0};
    static const WCHAR iactive[] = {'i',0};
    static const WCHAR batch[] = {'b',0};

    if(*prop == '/') {
        ++prop;
        if(*prop == '/')
            ++prop;
    }
    else
        ++prop;

    if(strcmpiW(prop, iactive) == 0)
        wshInteractive = VARIANT_TRUE;
    else if(strcmpiW(prop, batch) == 0)
        wshInteractive = VARIANT_FALSE;
    else if(strcmpiW(prop, nologoW) == 0)
        WINE_FIXME("ignored %s switch\n", debugstr_w(nologoW));
    else
    {
        WINE_FIXME("unsupported switch %s\n", debugstr_w(prop));
        return FALSE;
    }
    return TRUE;
}
