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
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  char WCHAR ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int DOUBLE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FALSE ; 
 double INFINITY ; 
 double NAN ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ TRUE ; 
 int FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char const) ; 
 scalar_t__ FUNC3 (char const) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC7(jsstr_t *str, double *ret)
{
    const WCHAR *ptr;
    BOOL neg = FALSE;
    DOUBLE d = 0.0;

    static const WCHAR infinityW[] = {'I','n','f','i','n','i','t','y'};

    ptr = FUNC4(str);
    if(!ptr)
        return E_OUTOFMEMORY;

    while(FUNC3(*ptr))
        ptr++;

    if(*ptr == '-') {
        neg = TRUE;
        ptr++;
    }else if(*ptr == '+') {
        ptr++;
    }

    if(!FUNC6(ptr, infinityW, FUNC0(infinityW))) {
        ptr += FUNC0(infinityW);
        while(*ptr && FUNC3(*ptr))
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
        while((l = FUNC1(*ptr)) != -1) {
            d = d*16 + l;
            ptr++;
        }

        *ret = d;
        return S_OK;
    }

    while(FUNC2(*ptr))
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

        while(FUNC2(*ptr))
            l = l*10 + (*ptr++ - '0');
        if(eneg)
            l = -l;

        d *= FUNC5(10, l);
    }else if(*ptr == '.') {
        DOUBLE dec = 0.1;

        ptr++;
        while(FUNC2(*ptr)) {
            d += dec * (*ptr++ - '0');
            dec *= 0.1;
        }
    }

    while(FUNC3(*ptr))
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