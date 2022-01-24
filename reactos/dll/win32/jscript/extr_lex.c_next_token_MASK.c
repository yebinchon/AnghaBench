#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int* ptr; int* end; scalar_t__ nl; int /*<<< orphan*/  is_html; scalar_t__ implicit_nl_semicolon; } ;
typedef  TYPE_1__ parser_ctx_t ;
typedef  int /*<<< orphan*/  literal_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int EXPR_ASSIGNADD ; 
 int EXPR_ASSIGNAND ; 
 int EXPR_ASSIGNDIV ; 
 int EXPR_ASSIGNLSHIFT ; 
 int EXPR_ASSIGNMOD ; 
 int EXPR_ASSIGNMUL ; 
 int EXPR_ASSIGNOR ; 
 int EXPR_ASSIGNRRSHIFT ; 
 int EXPR_ASSIGNRSHIFT ; 
 int EXPR_ASSIGNSUB ; 
 int EXPR_ASSIGNXOR ; 
 int EXPR_EQ ; 
 int EXPR_EQEQ ; 
 int EXPR_GREATER ; 
 int EXPR_GREATEREQ ; 
 int EXPR_LESS ; 
 int EXPR_LESSEQ ; 
 int EXPR_LSHIFT ; 
 int EXPR_NOTEQ ; 
 int EXPR_NOTEQEQ ; 
 int EXPR_RRSHIFT ; 
 int EXPR_RSHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,char,char) ; 
 int FUNC2 (TYPE_1__*,void*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int kDCOL ; 
 int kDIVEQ ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,double) ; 
 int /*<<< orphan*/  FUNC7 (int**,int*,double*) ; 
 int FUNC8 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,double*) ; 
 int FUNC10 (TYPE_1__*,void*,char) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int tANDAND ; 
 int tAssignOper ; 
 int tDEC ; 
 int tEOF ; 
 int tEqOper ; 
 int tHTMLCOMMENT ; 
 int tINC ; 
 int tNumericLiteral ; 
 int tOROR ; 
 int tRelOper ; 
 int tShiftOper ; 

__attribute__((used)) static int FUNC14(parser_ctx_t *ctx, void *lval)
{
    do {
        if(!FUNC13(ctx))
            return tEOF;
    }while(FUNC11(ctx) || FUNC12(ctx));

    if(ctx->implicit_nl_semicolon) {
        if(ctx->nl)
            return ';';
        ctx->implicit_nl_semicolon = FALSE;
    }

    if(FUNC3(*ctx->ptr)) {
        int ret = FUNC2(ctx, lval);
        if(ret)
            return ret;

        return FUNC8(ctx, lval);
    }

    if(FUNC4(*ctx->ptr)) {
        double n;

        if(!FUNC9(ctx, &n))
            return -1;

        *(literal_t**)lval = FUNC6(ctx, n);
        return tNumericLiteral;
    }

    switch(*ctx->ptr) {
    case '{':
    case '(':
    case ')':
    case '[':
    case ']':
    case ';':
    case ',':
    case '~':
    case '?':
        return *ctx->ptr++;

    case '}':
        *(const WCHAR**)lval = ctx->ptr++;
        return '}';

    case '.':
        if(ctx->ptr+1 < ctx->end && FUNC4(ctx->ptr[1])) {
            double n;
            HRESULT hres;
            hres = FUNC7(&ctx->ptr, ctx->end, &n);
            if(FUNC0(hres)) {
                FUNC5(ctx, hres);
                return -1;
            }
            *(literal_t**)lval = FUNC6(ctx, n);
            return tNumericLiteral;
        }
        ctx->ptr++;
        return '.';

    case '<':
        if(++ctx->ptr == ctx->end) {
            *(int*)lval = EXPR_LESS;
            return tRelOper;
        }

        switch(*ctx->ptr) {
        case '=':  /* <= */
            ctx->ptr++;
            *(int*)lval = EXPR_LESSEQ;
            return tRelOper;
        case '<':  /* << */
            if(++ctx->ptr < ctx->end && *ctx->ptr == '=') { /* <<= */
                ctx->ptr++;
                *(int*)lval = EXPR_ASSIGNLSHIFT;
                return tAssignOper;
            }
            *(int*)lval = EXPR_LSHIFT;
            return tShiftOper;
        default: /* < */
            *(int*)lval = EXPR_LESS;
            return tRelOper;
        }

    case '>':
        if(++ctx->ptr == ctx->end) { /* > */
            *(int*)lval = EXPR_GREATER;
            return tRelOper;
        }

        switch(*ctx->ptr) {
        case '=':  /* >= */
            ctx->ptr++;
            *(int*)lval = EXPR_GREATEREQ;
            return tRelOper;
        case '>':  /* >> */
            if(++ctx->ptr < ctx->end) {
                if(*ctx->ptr == '=') {  /* >>= */
                    ctx->ptr++;
                    *(int*)lval = EXPR_ASSIGNRSHIFT;
                    return tAssignOper;
                }
                if(*ctx->ptr == '>') {  /* >>> */
                    if(++ctx->ptr < ctx->end && *ctx->ptr == '=') {  /* >>>= */
                        ctx->ptr++;
                        *(int*)lval = EXPR_ASSIGNRRSHIFT;
                        return tAssignOper;
                    }
                    *(int*)lval = EXPR_RRSHIFT;
                    return tRelOper;
                }
            }
            *(int*)lval = EXPR_RSHIFT;
            return tShiftOper;
        default:
            *(int*)lval = EXPR_GREATER;
            return tRelOper;
        }

    case '+':
        ctx->ptr++;
        if(ctx->ptr < ctx->end) {
            switch(*ctx->ptr) {
            case '+':  /* ++ */
                ctx->ptr++;
                return tINC;
            case '=':  /* += */
                ctx->ptr++;
                *(int*)lval = EXPR_ASSIGNADD;
                return tAssignOper;
            }
        }
        return '+';

    case '-':
        ctx->ptr++;
        if(ctx->ptr < ctx->end) {
            switch(*ctx->ptr) {
            case '-':  /* -- or --> */
                ctx->ptr++;
                if(ctx->is_html && ctx->nl && ctx->ptr < ctx->end && *ctx->ptr == '>') {
                    ctx->ptr++;
                    return tHTMLCOMMENT;
                }
                return tDEC;
            case '=':  /* -= */
                ctx->ptr++;
                *(int*)lval = EXPR_ASSIGNSUB;
                return tAssignOper;
            }
        }
        return '-';

    case '*':
        if(++ctx->ptr < ctx->end && *ctx->ptr == '=') { /* *= */
            ctx->ptr++;
            *(int*)lval = EXPR_ASSIGNMUL;
            return tAssignOper;
        }
        return '*';

    case '%':
        if(++ctx->ptr < ctx->end && *ctx->ptr == '=') { /* %= */
            ctx->ptr++;
            *(int*)lval = EXPR_ASSIGNMOD;
            return tAssignOper;
        }
        return '%';

    case '&':
        if(++ctx->ptr < ctx->end) {
            switch(*ctx->ptr) {
            case '=':  /* &= */
                ctx->ptr++;
                *(int*)lval = EXPR_ASSIGNAND;
                return tAssignOper;
            case '&':  /* && */
                ctx->ptr++;
                return tANDAND;
            }
        }
        return '&';

    case '|':
        if(++ctx->ptr < ctx->end) {
            switch(*ctx->ptr) {
            case '=':  /* |= */
                ctx->ptr++;
                *(int*)lval = EXPR_ASSIGNOR;
                return tAssignOper;
            case '|':  /* || */
                ctx->ptr++;
                return tOROR;
            }
        }
        return '|';

    case '^':
        if(++ctx->ptr < ctx->end && *ctx->ptr == '=') {  /* ^= */
            ctx->ptr++;
            *(int*)lval = EXPR_ASSIGNXOR;
            return tAssignOper;
        }
        return '^';

    case '!':
        if(++ctx->ptr < ctx->end && *ctx->ptr == '=') {  /* != */
            if(++ctx->ptr < ctx->end && *ctx->ptr == '=') {  /* !== */
                ctx->ptr++;
                *(int*)lval = EXPR_NOTEQEQ;
                return tEqOper;
            }
            *(int*)lval = EXPR_NOTEQ;
            return tEqOper;
        }
        return '!';

    case '=':
        if(++ctx->ptr < ctx->end && *ctx->ptr == '=') {  /* == */
            if(++ctx->ptr < ctx->end && *ctx->ptr == '=') {  /* === */
                ctx->ptr++;
                *(int*)lval = EXPR_EQEQ;
                return tEqOper;
            }
            *(int*)lval = EXPR_EQ;
            return tEqOper;
        }
        return '=';

    case '/':
        if(++ctx->ptr < ctx->end) {
            if(*ctx->ptr == '=') {  /* /= */
                ctx->ptr++;
                *(int*)lval = EXPR_ASSIGNDIV;
                return kDIVEQ;
            }
        }
        return '/';

    case ':':
        if(++ctx->ptr < ctx->end && *ctx->ptr == ':') {
            ctx->ptr++;
            return kDCOL;
        }
        return ':';

    case '\"':
    case '\'':
        return FUNC10(ctx, lval, *ctx->ptr);

    case '_':
    case '$':
        return FUNC8(ctx, lval);

    case '@':
        return '@';
    }

    FUNC1("unexpected char '%c' %d\n", *ctx->ptr, *ctx->ptr);
    return 0;
}