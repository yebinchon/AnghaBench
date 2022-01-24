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
typedef  int /*<<< orphan*/  compiler_ctx_t ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const) ; 
 int /*<<< orphan*/  FUNC4 (char const) ; 
 scalar_t__ FUNC5 (char const) ; 

__attribute__((used)) static HRESULT FUNC6(compiler_ctx_t *ctx, const WCHAR *args, BSTR *arg_array, unsigned *args_size)
{
    const WCHAR *ptr = args, *ptr2;
    unsigned arg_cnt = 0;

    while(FUNC5(*ptr))
        ptr++;
    if(!*ptr) {
        if(args_size)
            *args_size = 0;
        return S_OK;
    }

    while(1) {
        if(!FUNC4(*ptr) && *ptr != '_') {
            FUNC0("expected alpha or '_': %s\n", FUNC2(ptr));
            return E_FAIL;
        }

        ptr2 = ptr;
        while(FUNC3(*ptr) || *ptr == '_')
            ptr++;

        if(*ptr && *ptr != ',' && !FUNC5(*ptr)) {
            FUNC0("unexpected har %s\n", FUNC2(ptr));
            return E_FAIL;
        }

        if(arg_array) {
            arg_array[arg_cnt] = FUNC1(ctx, ptr2, ptr-ptr2);
            if(!arg_array[arg_cnt])
                return E_OUTOFMEMORY;
        }
        arg_cnt++;

        while(FUNC5(*ptr))
            ptr++;
        if(!*ptr)
            break;
        if(*ptr != ',') {
            FUNC0("expected ',': %s\n", FUNC2(ptr));
            return E_FAIL;
        }

        ptr++;
        while(FUNC5(*ptr))
            ptr++;
    }

    if(args_size)
        *args_size = arg_cnt;
    return S_OK;
}