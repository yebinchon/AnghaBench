
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LONGLONG ;
typedef int HRESULT ;


 int E_FAIL ;
 int INT_MAX ;
 int INT_MIN ;
 int JS_E_MISSING_SEMICOLON ;
 int MAXLONGLONG ;
 int S_OK ;
 int WARN (char*) ;
 scalar_t__ is_identifier_char (char const) ;
 scalar_t__ iswdigit (char const) ;
 int pow (int,int) ;

HRESULT parse_decimal(const WCHAR **iter, const WCHAR *end, double *ret)
{
    const WCHAR *ptr = *iter;
    LONGLONG d = 0, hlp;
    int exp = 0;

    while(ptr < end && iswdigit(*ptr)) {
        hlp = d*10 + *(ptr++) - '0';
        if(d>MAXLONGLONG/10 || hlp<0) {
            exp++;
            break;
        }
        else
            d = hlp;
    }
    while(ptr < end && iswdigit(*ptr)) {
        exp++;
        ptr++;
    }

    if(*ptr == '.') {
        ptr++;

        while(ptr < end && iswdigit(*ptr)) {
            hlp = d*10 + *(ptr++) - '0';
            if(d>MAXLONGLONG/10 || hlp<0)
                break;

            d = hlp;
            exp--;
        }
        while(ptr < end && iswdigit(*ptr))
            ptr++;
    }

    if(ptr < end && (*ptr == 'e' || *ptr == 'E')) {
        int sign = 1, e = 0;

        if(++ptr < end) {
            if(*ptr == '+') {
                ptr++;
            }else if(*ptr == '-') {
                sign = -1;
                ptr++;
            }else if(!iswdigit(*ptr)) {
                WARN("Expected exponent part\n");
                return E_FAIL;
            }
        }

        if(ptr == end) {
            WARN("unexpected end of file\n");
            return E_FAIL;
        }

        while(ptr < end && iswdigit(*ptr)) {
            if(e > INT_MAX/10 || (e = e*10 + *ptr++ - '0')<0)
                e = INT_MAX;
        }
        e *= sign;

        if(exp<0 && e<0 && e+exp>0) exp = INT_MIN;
        else if(exp>0 && e>0 && e+exp<0) exp = INT_MAX;
        else exp += e;
    }

    if(is_identifier_char(*ptr)) {
        WARN("wrong char after zero\n");
        return JS_E_MISSING_SEMICOLON;
    }

    *ret = exp>=0 ? d*pow(10, exp) : d/pow(10, -exp);
    *iter = ptr;
    return S_OK;
}
