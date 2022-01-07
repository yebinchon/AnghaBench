
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum content { ____Placeholder_content } content ;
typedef char WCHAR ;
typedef int * LPCOLESTR ;
typedef int DWORD ;
typedef int CLSID ;


 scalar_t__ CLSIDFromProgID (int *,int *) ;
 scalar_t__ CLSIDFromString (int *,int *) ;
 int CLSID_WebBrowser ;
 int FIXME (char*) ;
 int IsEmpty ;
 int IsGUID ;
 int IsHTML ;
 int IsURL ;
 int IsUnknown ;
 int MAX_PATH ;
 scalar_t__ PathIsURLW (int *) ;
 scalar_t__ S_OK ;
 int URL_APPLY_GUESSFILE ;
 int URL_APPLY_GUESSSCHEME ;
 scalar_t__ UrlApplySchemeW (int *,char*,int*,int) ;
 int WARN (char*,int ) ;
 int _wcsnicmp (int *,char const*,int) ;
 int wine_dbgstr_w (int *) ;

__attribute__((used)) static enum content get_content_type(LPCOLESTR name, CLSID *control_id)
{
    static const WCHAR mshtml_prefixW[] = {'m','s','h','t','m','l',':',0};
    WCHAR new_urlW[MAX_PATH];
    DWORD size = MAX_PATH;

    if (!name || !name[0])
    {
        WARN("name %s\n", wine_dbgstr_w(name));
        return IsEmpty;
    }

    if (CLSIDFromString(name, control_id) == S_OK ||
        CLSIDFromProgID(name, control_id) == S_OK)
        return IsGUID;

    if (PathIsURLW (name) ||
        UrlApplySchemeW(name, new_urlW, &size, URL_APPLY_GUESSSCHEME|URL_APPLY_GUESSFILE) == S_OK)
    {
        *control_id = CLSID_WebBrowser;
        return IsURL;
    }

    if (!_wcsnicmp(name, mshtml_prefixW, 7))
    {
        FIXME("mshtml prefix not implemented\n");
        *control_id = CLSID_WebBrowser;
        return IsHTML;
    }

    return IsUnknown;
}
