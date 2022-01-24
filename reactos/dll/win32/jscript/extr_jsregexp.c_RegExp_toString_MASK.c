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
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {int /*<<< orphan*/  str; TYPE_1__* jsregexp; } ;
struct TYPE_4__ {unsigned int flags; } ;
typedef  TYPE_2__ RegExpInstance ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  JSCLASS_REGEXP ; 
 unsigned int REG_FOLD ; 
 unsigned int REG_GLOB ; 
 unsigned int REG_MULTILINE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC8(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    RegExpInstance *regexp;
    unsigned len, f;
    jsstr_t *ret;
    WCHAR *ptr;

    FUNC1("\n");

    if(!FUNC2(jsthis, JSCLASS_REGEXP)) {
        FUNC0("Not a RegExp\n");
        return E_NOTIMPL;
    }

    regexp = FUNC7(jsthis);

    if(!r)
        return S_OK;

    len = FUNC5(regexp->str) + 2;

    f = regexp->jsregexp->flags;
    if(f & REG_FOLD)
        len++;
    if(f & REG_GLOB)
        len++;
    if(f & REG_MULTILINE)
        len++;

    ret = FUNC3(len, &ptr);
    if(!ret)
        return E_OUTOFMEMORY;

    *ptr++ = '/';
    ptr += FUNC4(regexp->str, ptr);
    *ptr++ = '/';

    if(f & REG_FOLD)
        *ptr++ = 'i';
    if(f & REG_GLOB)
        *ptr++ = 'g';
    if(f & REG_MULTILINE)
        *ptr++ = 'm';

    *r = FUNC6(ret);
    return S_OK;
}