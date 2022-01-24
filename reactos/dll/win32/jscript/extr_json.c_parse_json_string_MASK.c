#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* ptr; } ;
typedef  TYPE_1__ json_parse_ctx_t ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  S_OK ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t*) ; 

__attribute__((used)) static HRESULT FUNC5(json_parse_ctx_t *ctx, WCHAR **r)
{
    const WCHAR *ptr = ++ctx->ptr;
    size_t len;
    WCHAR *buf;

    while(*ctx->ptr && *ctx->ptr != '"') {
        if(*ctx->ptr++ == '\\')
            ctx->ptr++;
    }
    if(!*ctx->ptr) {
        FUNC0("unterminated string\n");
        return E_FAIL;
    }

    len = ctx->ptr-ptr;
    buf = FUNC1((len+1)*sizeof(WCHAR));
    if(!buf)
        return E_OUTOFMEMORY;
    if(len)
        FUNC3(buf, ptr, len*sizeof(WCHAR));

    if(!FUNC4(buf, &len)) {
        FUNC0("unescape failed\n");
        FUNC2(buf);
        return E_FAIL;
    }

    buf[len] = 0;
    ctx->ptr++;
    *r = buf;
    return S_OK;
}