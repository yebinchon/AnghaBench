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
struct TYPE_4__ {int version; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 
 int /*<<< orphan*/ * FUNC7 (unsigned int,char**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  messageW ; 
 int /*<<< orphan*/  nameW ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC14(script_ctx_t *ctx, vdisp_t *vthis, WORD flags,
        unsigned argc, jsval_t *argv, jsval_t *r)
{
    jsdisp_t *jsthis;
    jsstr_t *name = NULL, *msg = NULL, *ret = NULL;
    jsval_t v;
    HRESULT hres;

    static const WCHAR object_errorW[] = {'[','o','b','j','e','c','t',' ','E','r','r','o','r',']',0};

    FUNC2("\n");

    jsthis = FUNC3(vthis);
    if(!jsthis || ctx->version < 2) {
        if(r) {
            jsstr_t *str;

            str = FUNC6(object_errorW);
            if(!str)
                return E_OUTOFMEMORY;
            *r = FUNC12(str);
        }
        return S_OK;
    }

    hres = FUNC5(jsthis, nameW, &v);
    if(FUNC0(hres))
        return hres;

    if(!FUNC4(v)) {
        hres = FUNC13(ctx, v, &name);
        FUNC11(v);
        if(FUNC0(hres))
            return hres;
    }

    hres = FUNC5(jsthis, messageW, &v);
    if(FUNC1(hres)) {
        if(!FUNC4(v)) {
            hres = FUNC13(ctx, v, &msg);
            FUNC11(v);
        }
    }

    if(FUNC1(hres)) {
        unsigned name_len = name ? FUNC9(name) : 0;
        unsigned msg_len = msg ? FUNC9(msg) : 0;

        if(name_len && msg_len) {
            WCHAR *ptr;

            ret = FUNC7(name_len + msg_len + 2, &ptr);
            if(ret) {
                FUNC8(name, ptr);
                ptr[name_len] = ':';
                ptr[name_len+1] = ' ';
                FUNC8(msg, ptr+name_len+2);
            }else {
                hres = E_OUTOFMEMORY;
            }
        }else if(name_len) {
            ret = name;
            name = NULL;
        }else if(msg_len) {
            ret = msg;
            msg = NULL;
        }else {
            ret = FUNC6(object_errorW);
        }
    }

    if(msg)
        FUNC10(msg);
    if(name)
        FUNC10(name);
    if(FUNC0(hres))
        return hres;
    if(!ret)
        return E_OUTOFMEMORY;

    if(r)
        *r = FUNC12(ret);
    else
        FUNC10(ret);
    return S_OK;
}