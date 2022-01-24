#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
struct TYPE_6__ {char* ptr; int /*<<< orphan*/  end; int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ json_parse_ctx_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  falseW ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nullW ; 
 int /*<<< orphan*/  FUNC19 (char**,int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 char FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  trueW ; 

__attribute__((used)) static HRESULT FUNC22(json_parse_ctx_t *ctx, jsval_t *r)
{
    HRESULT hres;

    switch(FUNC21(ctx)) {

    /* JSONNullLiteral */
    case 'n':
        if(!FUNC7(ctx, nullW))
            break;
        *r = FUNC14();
        return S_OK;

    /* JSONBooleanLiteral */
    case 't':
        if(!FUNC7(ctx, trueW))
            break;
        *r = FUNC13(TRUE);
        return S_OK;
    case 'f':
        if(!FUNC7(ctx, falseW))
            break;
        *r = FUNC13(FALSE);
        return S_OK;

    /* JSONObject */
    case '{': {
        WCHAR *prop_name;
        jsdisp_t *obj;
        jsval_t val;

        hres = FUNC4(ctx->ctx, NULL, &obj);
        if(FUNC0(hres))
            return hres;

        ctx->ptr++;
        if(FUNC21(ctx) == '}') {
            ctx->ptr++;
            *r = FUNC16(obj);
            return S_OK;
        }

        while(1) {
            if(*ctx->ptr != '"')
                break;
            hres = FUNC20(ctx, &prop_name);
            if(FUNC0(hres))
                break;

            if(FUNC21(ctx) != ':') {
                FUNC1("missing ':'\n");
                FUNC6(prop_name);
                break;
            }

            ctx->ptr++;
            hres = FUNC22(ctx, &val);
            if(FUNC2(hres)) {
                hres = FUNC10(obj, prop_name, val);
                FUNC17(val);
            }
            FUNC6(prop_name);
            if(FUNC0(hres))
                break;

            if(FUNC21(ctx) == '}') {
                ctx->ptr++;
                *r = FUNC16(obj);
                return S_OK;
            }

            if(*ctx->ptr++ != ',') {
                FUNC1("expected ','\n");
                break;
            }
            FUNC21(ctx);
        }

        FUNC11(obj);
        break;
    }

    /* JSONString */
    case '"': {
        WCHAR *string;
        jsstr_t *str;

        hres = FUNC20(ctx, &string);
        if(FUNC0(hres))
            return hres;

        /* FIXME: avoid reallocation */
        str = FUNC12(string);
        FUNC6(string);
        if(!str)
            return E_OUTOFMEMORY;

        *r = FUNC18(str);
        return S_OK;
    }

    /* JSONArray */
    case '[': {
        jsdisp_t *array;
        unsigned i = 0;
        jsval_t val;

        hres = FUNC3(ctx->ctx, 0, &array);
        if(FUNC0(hres))
            return hres;

        ctx->ptr++;
        if(FUNC21(ctx) == ']') {
            ctx->ptr++;
            *r = FUNC16(array);
            return S_OK;
        }

        while(1) {
            hres = FUNC22(ctx, &val);
            if(FUNC0(hres))
                break;

            hres = FUNC9(array, i, val);
            FUNC17(val);
            if(FUNC0(hres))
                break;

            if(FUNC21(ctx) == ']') {
                ctx->ptr++;
                *r = FUNC16(array);
                return S_OK;
            }

            if(*ctx->ptr != ',') {
                FUNC1("expected ','\n");
                break;
            }

            ctx->ptr++;
            i++;
        }

        FUNC11(array);
        break;
    }

    /* JSONNumber */
    default: {
        int sign = 1;
        double n;

        if(*ctx->ptr == '-') {
            sign = -1;
            ctx->ptr++;
            FUNC21(ctx);
        }

        if(*ctx->ptr == '0' && ctx->ptr + 1 < ctx->end && FUNC8(ctx->ptr[1]))
            break;

        hres = FUNC19(&ctx->ptr, ctx->end, &n);
        if(FUNC0(hres))
            break;

        *r = FUNC15(sign*n);
        return S_OK;
    }
    }

    FUNC1("Syntax error at %s\n", FUNC5(ctx->ptr));
    return E_FAIL;
}