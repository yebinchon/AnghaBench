#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
struct TYPE_5__ {TYPE_1__* builtin_info; } ;
typedef  TYPE_2__ jsdisp_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  char WCHAR ;
struct TYPE_4__ {size_t class; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 size_t JSCLASS_NONE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char const*) ; 

__attribute__((used)) static HRESULT FUNC8(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
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
    /* Keep in sync with jsclass_t enum */
    static const WCHAR *names[] = {NULL, arrayW, booleanW, dateW, objectW, errorW,
        functionW, NULL, mathW, numberW, objectW, regexpW, stringW, objectW, objectW, objectW};

    FUNC1("\n");

    jsdisp = FUNC3(jsthis);
    if(!jsdisp) {
        str = objectW;
    }else if(names[jsdisp->builtin_info->class]) {
        str = names[jsdisp->builtin_info->class];
    }else {
        FUNC2(jsdisp->builtin_info->class != JSCLASS_NONE);
        FUNC0("jdisp->builtin_info->class = %d\n", jsdisp->builtin_info->class);
        return E_FAIL;
    }

    if(r) {
        jsstr_t *ret;
        WCHAR *ptr;

        ret = FUNC4(9+FUNC6(str), &ptr);
        if(!ret)
            return E_OUTOFMEMORY;

        FUNC7(ptr, formatW, str);
        *r = FUNC5(ret);
    }

    return S_OK;
}