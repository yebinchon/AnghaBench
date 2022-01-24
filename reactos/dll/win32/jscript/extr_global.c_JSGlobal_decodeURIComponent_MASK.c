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
typedef  int /*<<< orphan*/  vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  MB_ERR_INVALID_CHARS ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char const) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,char const**) ; 

__attribute__((used)) static HRESULT FUNC10(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    const WCHAR *ptr, *uri;
    jsstr_t *str, *ret;
    WCHAR *out_ptr;
    DWORD len = 0;
    HRESULT hres;

    FUNC3("\n");

    if(!argc) {
        if(r)
            *r = FUNC8(FUNC7());
        return S_OK;
    }

    hres = FUNC9(ctx, argv[0], &str, &uri);
    if(FUNC0(hres))
        return hres;

    ptr = uri;
    while(*ptr) {
        if(*ptr == '%') {
            char octets[4];
            unsigned char mask = 0x80;
            int i, size, num_bytes = 0;
            if(FUNC4(*(ptr+1)) < 0 || FUNC4(*(ptr+2)) < 0) {
                FUNC1("Throw URIError: Invalid hex sequence\n");
                FUNC6(str);
                return E_FAIL;
            }
            octets[0] = (FUNC4(*(ptr+1)) << 4) + FUNC4(*(ptr+2));
            ptr += 3;
            while(octets[0] & mask) {
                mask = mask >> 1;
                ++num_bytes;
            }
            if(num_bytes == 1 || num_bytes > 4) {
                FUNC1("Throw URIError: Invalid initial UTF character\n");
                FUNC6(str);
                return E_FAIL;
            }
            for(i = 1; i < num_bytes; ++i) {
                if(*ptr != '%'){
                    FUNC1("Throw URIError: Incomplete UTF sequence\n");
                    FUNC6(str);
                    return E_FAIL;
                }
                if(FUNC4(*(ptr+1)) < 0 || FUNC4(*(ptr+2)) < 0) {
                    FUNC1("Throw URIError: Invalid hex sequence\n");
                    FUNC6(str);
                    return E_FAIL;
                }
                octets[i] = (FUNC4(*(ptr+1)) << 4) + FUNC4(*(ptr+2));
                ptr += 3;
            }
            size = FUNC2(CP_UTF8, MB_ERR_INVALID_CHARS, octets,
                    num_bytes ? num_bytes : 1, NULL, 0);
            if(size == 0) {
                FUNC1("Throw URIError: Invalid UTF sequence\n");
                FUNC6(str);
                return E_FAIL;
            }
            len += size;
        }else {
            ++ptr;
            ++len;
        }
    }

    ret = FUNC5(len, &out_ptr);
    if(!ret) {
        FUNC6(str);
        return E_OUTOFMEMORY;
    }

    ptr = uri;
    while(*ptr) {
        if(*ptr == '%') {
            char octets[4];
            unsigned char mask = 0x80;
            int i, size, num_bytes = 0;
            octets[0] = (FUNC4(*(ptr+1)) << 4) + FUNC4(*(ptr+2));
            ptr += 3;
            while(octets[0] & mask) {
                mask = mask >> 1;
                ++num_bytes;
            }
            for(i = 1; i < num_bytes; ++i) {
                octets[i] = (FUNC4(*(ptr+1)) << 4) + FUNC4(*(ptr+2));
                ptr += 3;
            }
            size = FUNC2(CP_UTF8, MB_ERR_INVALID_CHARS, octets,
                    num_bytes ? num_bytes : 1, out_ptr, len);
            len -= size;
            out_ptr += size;
        }else {
            *out_ptr++ = *ptr++;
            --len;
        }
    }

    FUNC6(str);

    if(r)
        *r = FUNC8(ret);
    else
        FUNC6(ret);
    return S_OK;
}