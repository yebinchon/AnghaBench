
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int HRESULT ;
typedef size_t DWORD ;


 int ARRAY_SIZE (char const*) ;
 int E_FAIL ;
 int FIXME (char*,char const) ;
 int JS_E_INVALID_CHAR ;
 int S_OK ;
 int TRACE (char*,int ) ;
 int debugstr_w (char*) ;
 int decode_dword (char const*,size_t*) ;
 char** dictionary ;
 size_t* pick_encoding ;
 scalar_t__ wcsncmp (char const*,char const*,int ) ;

HRESULT decode_source(WCHAR *code)
{
    const WCHAR *src = code;
    WCHAR *dst = code;

    static const WCHAR decode_beginW[] = {'#','@','~','^'};
    static const WCHAR decode_endW[] = {'^','#','~','@'};

    while(*src) {
        if(!wcsncmp(src, decode_beginW, ARRAY_SIZE(decode_beginW))) {
            DWORD len, i, j=0, csum, s=0;

            src += ARRAY_SIZE(decode_beginW);

            if(!decode_dword(src, &len))
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
                        FIXME("unescape %c\n", src[i]);
                        return E_FAIL;
                    }
                }else if (src[i] < 128) {
                    s += dst[j] = dictionary[src[i]][pick_encoding[j%64]];
                    j++;
                }else {
                    FIXME("Unsupported char %c\n", src[i]);
                    return E_FAIL;
                }
            }

            src += len;
            dst += j;

            if(!decode_dword(src, &csum) || s != csum)
                return JS_E_INVALID_CHAR;
            src += 8;

            if(wcsncmp(src, decode_endW, ARRAY_SIZE(decode_endW)))
                return JS_E_INVALID_CHAR;
            src += ARRAY_SIZE(decode_endW);
        }else {
            *dst++ = *src++;
        }
    }

    *dst = 0;

    TRACE("decoded %s\n", debugstr_w(code));
    return S_OK;
}
