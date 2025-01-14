
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsstr_t ;
typedef char WCHAR ;
typedef int LONG ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int DOUBLE ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (char const*) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FALSE ;
 double INFINITY ;
 double NAN ;
 int S_OK ;
 scalar_t__ TRUE ;
 int hex_to_int (char const) ;
 scalar_t__ iswdigit (char const) ;
 scalar_t__ iswspace (char const) ;
 char* jsstr_flatten (int *) ;
 int pow (int,int) ;
 int wcsncmp (char const*,char const*,int ) ;

__attribute__((used)) static HRESULT str_to_number(jsstr_t *str, double *ret)
{
    const WCHAR *ptr;
    BOOL neg = FALSE;
    DOUBLE d = 0.0;

    static const WCHAR infinityW[] = {'I','n','f','i','n','i','t','y'};

    ptr = jsstr_flatten(str);
    if(!ptr)
        return E_OUTOFMEMORY;

    while(iswspace(*ptr))
        ptr++;

    if(*ptr == '-') {
        neg = TRUE;
        ptr++;
    }else if(*ptr == '+') {
        ptr++;
    }

    if(!wcsncmp(ptr, infinityW, ARRAY_SIZE(infinityW))) {
        ptr += ARRAY_SIZE(infinityW);
        while(*ptr && iswspace(*ptr))
            ptr++;

        if(*ptr)
            *ret = NAN;
        else
            *ret = neg ? -INFINITY : INFINITY;
        return S_OK;
    }

    if(*ptr == '0' && ptr[1] == 'x') {
        DWORD l = 0;

        ptr += 2;
        while((l = hex_to_int(*ptr)) != -1) {
            d = d*16 + l;
            ptr++;
        }

        *ret = d;
        return S_OK;
    }

    while(iswdigit(*ptr))
        d = d*10 + (*ptr++ - '0');

    if(*ptr == 'e' || *ptr == 'E') {
        BOOL eneg = FALSE;
        LONG l = 0;

        ptr++;
        if(*ptr == '-') {
            ptr++;
            eneg = TRUE;
        }else if(*ptr == '+') {
            ptr++;
        }

        while(iswdigit(*ptr))
            l = l*10 + (*ptr++ - '0');
        if(eneg)
            l = -l;

        d *= pow(10, l);
    }else if(*ptr == '.') {
        DOUBLE dec = 0.1;

        ptr++;
        while(iswdigit(*ptr)) {
            d += dec * (*ptr++ - '0');
            dec *= 0.1;
        }
    }

    while(iswspace(*ptr))
        ptr++;

    if(*ptr) {
        *ret = NAN;
        return S_OK;
    }

    if(neg)
        d = -d;

    *ret = d;
    return S_OK;
}
