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
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {char* gap; int /*<<< orphan*/  stack; int /*<<< orphan*/  buf; int /*<<< orphan*/  buf_len; int /*<<< orphan*/  stack_top; TYPE_1__ member_7; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_2__ stringify_ctx_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_NOTIMPL ; 
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (double) ; 
 double FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,char*) ; 
 size_t FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC21(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv, jsval_t *r)
{
    stringify_ctx_t stringify_ctx = {ctx, NULL,0,0, NULL,0,0, 0};
    HRESULT hres;

    FUNC3("\n");

    if(!argc) {
        if(r)
            *r = FUNC18();
        return S_OK;
    }

    if(argc >= 2 && FUNC11(argv[1])) {
        FUNC1("Replacer %s not yet supported\n", FUNC5(argv[1]));
        return E_NOTIMPL;
    }

    if(argc >= 3) {
        jsval_t space_val;

        hres = FUNC19(ctx, argv[2], &space_val);
        if(FUNC0(hres))
            return hres;

        if(FUNC10(space_val)) {
            double n = FUNC7(space_val);
            if(n >= 1) {
                int i, len;
                if(n > 10)
                    n = 10;
                len = FUNC6(n);
                for(i=0; i < len; i++)
                    stringify_ctx.gap[i] = ' ';
                stringify_ctx.gap[len] = 0;
            }
        }else if(FUNC12(space_val)) {
            jsstr_t *space_str = FUNC8(space_val);
            size_t len = FUNC15(space_str);
            if(len > 10)
                len = 10;
            FUNC14(space_str, 0, len, stringify_ctx.gap);
        }

        FUNC16(space_val);
    }

    hres = FUNC20(&stringify_ctx, argv[0]);
    if(FUNC2(hres) && r) {
        FUNC4(!stringify_ctx.stack_top);

        if(hres == S_OK) {
            jsstr_t *ret = FUNC13(stringify_ctx.buf, stringify_ctx.buf_len);
            if(ret)
                *r = FUNC17(ret);
            else
                hres = E_OUTOFMEMORY;
        }else {
            *r = FUNC18();
        }
    }

    FUNC9(stringify_ctx.buf);
    FUNC9(stringify_ctx.stack);
    return hres;
}