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
struct TYPE_4__ {int* ptr; } ;
typedef  TYPE_1__ parser_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int tAND ; 
 int tCCValue ; 
 int tEQ ; 
 int tEQEQ ; 
 int tGEQ ; 
 int tLEQ ; 
 int tLSHIFT ; 
 int tNEQ ; 
 int tNEQEQ ; 
 int tOR ; 
 int tRRSHIFT ; 
 int tRSHIFT ; 
 int FUNC2 (TYPE_1__*,void*) ; 

__attribute__((used)) static int FUNC3(void *lval, parser_ctx_t *ctx)
{
    int r;

    r = FUNC2(ctx, lval);
    if(r)
        return r > 0 ? tCCValue : -1;

    switch(*ctx->ptr) {
    case '(':
    case ')':
    case '+':
    case '-':
    case '*':
    case '/':
    case '~':
    case '%':
    case '^':
        return *ctx->ptr++;
    case '=':
         if(*++ctx->ptr == '=') {
             if(*++ctx->ptr == '=') {
                 ctx->ptr++;
                 return tEQEQ;
             }
             return tEQ;
         }
         break;
    case '!':
        if(*++ctx->ptr == '=') {
            if(*++ctx->ptr == '=') {
                ctx->ptr++;
                return tNEQEQ;
            }
            return tNEQ;
        }
        return '!';
    case '<':
        switch(*++ctx->ptr) {
        case '<':
            ctx->ptr++;
            return tLSHIFT;
        case '=':
            ctx->ptr++;
            return tLEQ;
        default:
            return '<';
        }
    case '>':
        switch(*++ctx->ptr) {
        case '>':
            if(*++ctx->ptr == '>') {
                ctx->ptr++;
                return tRRSHIFT;
            }
            return tRSHIFT;
        case '=':
            ctx->ptr++;
            return tGEQ;
        default:
            return '>';
        }
    case '|':
        if(*++ctx->ptr == '|') {
            ctx->ptr++;
            return tOR;
        }
        return '|';
    case '&':
        if(*++ctx->ptr == '&') {
            ctx->ptr++;
            return tAND;
        }
        return '&';
    }

    FUNC0("Failed to interpret %s\n", FUNC1(ctx->ptr));
    return -1;
}