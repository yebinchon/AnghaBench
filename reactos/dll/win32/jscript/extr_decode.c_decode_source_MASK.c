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
typedef  int /*<<< orphan*/  HRESULT ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  FUNC1 (char*,char const) ; 
 int /*<<< orphan*/  JS_E_INVALID_CHAR ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,size_t*) ; 
 char** dictionary ; 
 size_t* pick_encoding ; 
 scalar_t__ FUNC5 (char const*,char const*,int /*<<< orphan*/ ) ; 

HRESULT FUNC6(WCHAR *code)
{
    const WCHAR *src = code;
    WCHAR *dst = code;

    static const WCHAR decode_beginW[] = {'#','@','~','^'};
    static const WCHAR decode_endW[] = {'^','#','~','@'};

    while(*src) {
        if(!FUNC5(src, decode_beginW, FUNC0(decode_beginW))) {
            DWORD len, i, j=0, csum, s=0;

            src += FUNC0(decode_beginW);

            if(!FUNC4(src, &len))
                return JS_E_INVALID_CHAR;

            src += 8;

            for(i=0; i<len; i++) {
                if (src[i] == '@') {
                    switch(src[++i]) {
                    case '#':
                        s += dst[j++] = '\r';
                        break;
                    case '&':
                        s += dst[j++] = '\n';
                        break;
                    case '!':
                        s += dst[j++] = '<';
                        break;
                    case '*':
                        s += dst[j++] = '>';
                        break;
                    case '$':
                        s += dst[j++] = '@';
                        break;
                    default:
                        FUNC1("unescape %c\n", src[i]);
                        return E_FAIL;
                    }
                }else if (src[i] < 128) {
                    s += dst[j] = dictionary[src[i]][pick_encoding[j%64]];
                    j++;
                }else {
                    FUNC1("Unsupported char %c\n", src[i]);
                    return E_FAIL;
                }
            }

            src += len;
            dst += j;

            if(!FUNC4(src, &csum) || s != csum)
                return JS_E_INVALID_CHAR;
            src += 8;

            if(FUNC5(src, decode_endW, FUNC0(decode_endW)))
                return JS_E_INVALID_CHAR;
            src += FUNC0(decode_endW);
        }else {
            *dst++ = *src++;
        }
    }

    *dst = 0;

    FUNC2("decoded %s\n", FUNC3(code));
    return S_OK;
}