#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  dispex; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
typedef  TYPE_2__ vdisp_t ;
struct TYPE_10__ {int version; } ;
typedef  TYPE_3__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ HRESULT ;
typedef  unsigned int DWORD ;
typedef  int /*<<< orphan*/  DISPID ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ DISP_E_UNKNOWNNAME ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ **,unsigned int*) ; 
 int /*<<< orphan*/ * FUNC6 (unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static HRESULT FUNC14(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsdisp_t *jsthis;
    WCHAR buf[14], *buf_end, *str;
    DWORD i, length;
    jsval_t val;
    DISPID id;
    HRESULT hres;

    FUNC4("\n");

    hres = FUNC5(ctx, vthis, &jsthis, &length);
    if(FUNC1(hres))
        return hres;

    if(argc) {
        buf_end = buf + FUNC0(buf)-1;
        *buf_end-- = 0;
        i = length;

        while(i--) {
            str = FUNC6(i, buf_end);

            hres = FUNC7(jsthis, str, 0, &id);
            if(FUNC3(hres)) {
                hres = FUNC8(jsthis, id, &val);
                if(FUNC1(hres))
                    return hres;

                hres = FUNC9(jsthis, i+argc, val);
                FUNC11(val);
            }else if(hres == DISP_E_UNKNOWNNAME) {
                hres = FUNC2(vthis->u.dispex, id);
            }
        }

        if(FUNC1(hres))
            return hres;
    }

    for(i=0; i<argc; i++) {
        hres = FUNC9(jsthis, i, argv[i]);
        if(FUNC1(hres))
            return hres;
    }

    if(argc) {
        length += argc;
        hres = FUNC13(jsthis, length);
        if(FUNC1(hres))
            return hres;
    }

    if(r)
        *r = ctx->version < 2 ? FUNC12() : FUNC10(length);
    return S_OK;
}