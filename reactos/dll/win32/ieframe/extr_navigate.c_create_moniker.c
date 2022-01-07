
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPCWSTR ;
typedef int IMoniker ;
typedef int HRESULT ;
typedef int DWORD ;


 int ARRAY_SIZE (int *) ;
 int CreateURLMoniker (int *,int *,int **) ;
 scalar_t__ FAILED (int ) ;
 int INTERNET_MAX_URL_LENGTH ;
 scalar_t__ PathIsURLW (int *) ;
 int TRACE (char*,int ,int ) ;
 int URL_APPLY_DEFAULT ;
 int URL_APPLY_GUESSFILE ;
 int URL_APPLY_GUESSSCHEME ;
 int UrlApplySchemeW (int *,int *,int *,int) ;
 int WARN (char*,int ) ;
 int debugstr_w (int *) ;

__attribute__((used)) static HRESULT create_moniker(LPCWSTR url, IMoniker **mon)
{
    WCHAR new_url[INTERNET_MAX_URL_LENGTH];
    DWORD size;
    HRESULT hres;

    if(PathIsURLW(url))
        return CreateURLMoniker(((void*)0), url, mon);

    size = ARRAY_SIZE(new_url);
    hres = UrlApplySchemeW(url, new_url, &size, URL_APPLY_GUESSSCHEME | URL_APPLY_GUESSFILE | URL_APPLY_DEFAULT);
    TRACE("was %s got %s\n", debugstr_w(url), debugstr_w(new_url));
    if(FAILED(hres)) {
        WARN("UrlApplyScheme failed: %08x\n", hres);
        return hres;
    }

    return CreateURLMoniker(((void*)0), new_url, mon);
}
