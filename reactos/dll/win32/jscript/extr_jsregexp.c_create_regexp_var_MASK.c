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
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {TYPE_1__* jsregexp; int /*<<< orphan*/ * str; } ;
struct TYPE_4__ {unsigned int flags; } ;
typedef  TYPE_2__ RegExpInstance ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JSCLASS_REGEXP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*,unsigned int,unsigned int*) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ *) ; 

HRESULT FUNC15(script_ctx_t *ctx, jsval_t src_arg, jsval_t *flags_arg, jsdisp_t **ret)
{
    unsigned flags, opt_len = 0;
    const WCHAR *opt = NULL;
    jsstr_t *src;
    HRESULT hres;

    if(FUNC8(src_arg)) {
        jsdisp_t *obj;

        obj = FUNC6(FUNC4(src_arg));
        if(obj) {
            if(FUNC7(obj, JSCLASS_REGEXP)) {
                RegExpInstance *regexp = FUNC14(obj);

                hres = FUNC2(ctx, regexp->str, regexp->jsregexp->flags, ret);
                FUNC10(obj);
                return hres;
            }

            FUNC10(obj);
        }
    }

    if(!FUNC9(src_arg)) {
        FUNC1("src_arg = %s\n", FUNC3(src_arg));
        return E_NOTIMPL;
    }

    src = FUNC5(src_arg);

    if(flags_arg) {
        jsstr_t *opt_str;

        if(!FUNC9(*flags_arg)) {
            FUNC1("unimplemented for %s\n", FUNC3(*flags_arg));
            return E_NOTIMPL;
        }

        opt_str = FUNC5(*flags_arg);
        opt = FUNC11(opt_str);
        if(!opt)
            return E_OUTOFMEMORY;
        opt_len = FUNC12(opt_str);
    }

    hres = FUNC13(opt, opt_len, &flags);
    if(FUNC0(hres))
        return hres;

    return FUNC2(ctx, src, flags, ret);
}