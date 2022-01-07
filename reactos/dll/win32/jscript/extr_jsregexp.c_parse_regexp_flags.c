
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HRESULT ;
typedef int DWORD ;


 int E_FAIL ;
 int REG_FOLD ;
 int REG_GLOB ;
 int REG_MULTILINE ;
 int REG_STICKY ;
 int S_OK ;
 int WARN (char*,int const) ;

HRESULT parse_regexp_flags(const WCHAR *str, DWORD str_len, DWORD *ret)
{
    const WCHAR *p;
    DWORD flags = 0;

    for (p = str; p < str+str_len; p++) {
        switch (*p) {
        case 'g':
            flags |= REG_GLOB;
            break;
        case 'i':
            flags |= REG_FOLD;
            break;
        case 'm':
            flags |= REG_MULTILINE;
            break;
        case 'y':
            flags |= REG_STICKY;
            break;
        default:
            WARN("wrong flag %c\n", *p);
            return E_FAIL;
        }
    }

    *ret = flags;
    return S_OK;
}
