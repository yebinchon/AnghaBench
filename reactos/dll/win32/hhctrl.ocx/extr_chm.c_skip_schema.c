
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ LPCWSTR ;


 scalar_t__ ARRAY_SIZE (char const*) ;
 int _wcsnicmp (char const*,scalar_t__,scalar_t__) ;

LPCWSTR skip_schema(LPCWSTR url)
{
    static const WCHAR its_schema[] = {'i','t','s',':'};
    static const WCHAR msits_schema[] = {'m','s','-','i','t','s',':'};
    static const WCHAR mk_schema[] = {'m','k',':','@','M','S','I','T','S','t','o','r','e',':'};

    if(!_wcsnicmp(its_schema, url, ARRAY_SIZE(its_schema)))
        return url + ARRAY_SIZE(its_schema);
    if(!_wcsnicmp(msits_schema, url, ARRAY_SIZE(msits_schema)))
        return url + ARRAY_SIZE(msits_schema);
    if(!_wcsnicmp(mk_schema, url, ARRAY_SIZE(mk_schema)))
        return url + ARRAY_SIZE(mk_schema);

    return url;
}
