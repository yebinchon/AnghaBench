
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
struct TYPE_5__ {TYPE_1__* builtin_info; } ;
typedef TYPE_2__ jsdisp_t ;
typedef int WORD ;
typedef char WCHAR ;
struct TYPE_4__ {size_t class; } ;
typedef int HRESULT ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int FIXME (char*,size_t) ;
 size_t JSCLASS_NONE ;
 int S_OK ;
 int TRACE (char*) ;
 int assert (int) ;
 TYPE_2__* get_jsdisp (int *) ;
 int * jsstr_alloc_buf (scalar_t__,char**) ;
 int jsval_string (int *) ;
 scalar_t__ lstrlenW (char const*) ;
 int swprintf (char*,char const*,char const*) ;

__attribute__((used)) static HRESULT Object_toString(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsdisp_t *jsdisp;
    const WCHAR *str;

    static const WCHAR formatW[] = {'[','o','b','j','e','c','t',' ','%','s',']',0};

    static const WCHAR arrayW[] = {'A','r','r','a','y',0};
    static const WCHAR booleanW[] = {'B','o','o','l','e','a','n',0};
    static const WCHAR dateW[] = {'D','a','t','e',0};
    static const WCHAR errorW[] = {'E','r','r','o','r',0};
    static const WCHAR functionW[] = {'F','u','n','c','t','i','o','n',0};
    static const WCHAR mathW[] = {'M','a','t','h',0};
    static const WCHAR numberW[] = {'N','u','m','b','e','r',0};
    static const WCHAR objectW[] = {'O','b','j','e','c','t',0};
    static const WCHAR regexpW[] = {'R','e','g','E','x','p',0};
    static const WCHAR stringW[] = {'S','t','r','i','n','g',0};

    static const WCHAR *names[] = {((void*)0), arrayW, booleanW, dateW, objectW, errorW,
        functionW, ((void*)0), mathW, numberW, objectW, regexpW, stringW, objectW, objectW, objectW};

    TRACE("\n");

    jsdisp = get_jsdisp(jsthis);
    if(!jsdisp) {
        str = objectW;
    }else if(names[jsdisp->builtin_info->class]) {
        str = names[jsdisp->builtin_info->class];
    }else {
        assert(jsdisp->builtin_info->class != JSCLASS_NONE);
        FIXME("jdisp->builtin_info->class = %d\n", jsdisp->builtin_info->class);
        return E_FAIL;
    }

    if(r) {
        jsstr_t *ret;
        WCHAR *ptr;

        ret = jsstr_alloc_buf(9+lstrlenW(str), &ptr);
        if(!ret)
            return E_OUTOFMEMORY;

        swprintf(ptr, formatW, str);
        *r = jsval_string(ret);
    }

    return S_OK;
}
