#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
struct TYPE_4__ {int /*<<< orphan*/ * ctx; int /*<<< orphan*/  const* end; int /*<<< orphan*/  const* ptr; } ;
typedef  TYPE_1__ json_parse_ctx_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/  const**) ; 

__attribute__((used)) static HRESULT FUNC10(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv, jsval_t *r)
{
    json_parse_ctx_t parse_ctx;
    const WCHAR *buf;
    jsstr_t *str;
    jsval_t ret;
    HRESULT hres;

    if(argc != 1) {
        FUNC1("Unsupported args\n");
        return E_INVALIDARG;
    }

    hres = FUNC9(ctx, argv[0], &str, &buf);
    if(FUNC0(hres))
        return hres;

    FUNC2("%s\n", FUNC3(buf));

    parse_ctx.ptr = buf;
    parse_ctx.end = buf + FUNC4(str);
    parse_ctx.ctx = ctx;
    hres = FUNC7(&parse_ctx, &ret);
    FUNC5(str);
    if(FUNC0(hres))
        return hres;

    if(FUNC8(&parse_ctx)) {
        FUNC1("syntax error\n");
        FUNC6(ret);
        return E_FAIL;
    }

    if(r)
        *r = ret;
    else
        FUNC6(ret);
    return S_OK;
}