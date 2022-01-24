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
typedef  char WCHAR ;
typedef  int LONGLONG ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int INT_MAX ; 
 int INT_MIN ; 
 int /*<<< orphan*/  JS_E_MISSING_SEMICOLON ; 
 int MAXLONGLONG ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char const) ; 
 int FUNC3 (int,int) ; 

HRESULT FUNC4(const WCHAR **iter, const WCHAR *end, double *ret)
{
    const WCHAR *ptr = *iter;
    LONGLONG d = 0, hlp;
    int exp = 0;

    while(ptr < end && FUNC2(*ptr)) {
        hlp = d*10 + *(ptr++) - '0';
        if(d>MAXLONGLONG/10 || hlp<0) {
            exp++;
            break;
        }
        else
            d = hlp;
    }
    while(ptr < end && FUNC2(*ptr)) {
        exp++;
        ptr++;
    }

    if(*ptr == '.') {
        ptr++;

        while(ptr < end && FUNC2(*ptr)) {
            hlp = d*10 + *(ptr++) - '0';
            if(d>MAXLONGLONG/10 || hlp<0)
                break;

            d = hlp;
            exp--;
        }
        while(ptr < end && FUNC2(*ptr))
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
            }else if(!FUNC2(*ptr)) {
                FUNC0("Expected exponent part\n");
                return E_FAIL;
            }
        }

        if(ptr == end) {
            FUNC0("unexpected end of file\n");
            return E_FAIL;
        }

        while(ptr < end && FUNC2(*ptr)) {
            if(e > INT_MAX/10 || (e = e*10 + *ptr++ - '0')<0)
                e = INT_MAX;
        }
        e *= sign;

        if(exp<0 && e<0 && e+exp>0) exp = INT_MIN;
        else if(exp>0 && e>0 && e+exp<0) exp = INT_MAX;
        else exp += e;
    }

    if(FUNC1(*ptr)) {
        FUNC0("wrong char after zero\n");
        return JS_E_MISSING_SEMICOLON;
    }

    *ret = exp>=0 ? d*FUNC3(10, exp) : d/FUNC3(10, -exp);
    *iter = ptr;
    return S_OK;
}