#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char* ptr; TYPE_1__* script; } ;
typedef  TYPE_2__ parser_ctx_t ;
typedef  int /*<<< orphan*/  ccval_t ;
struct TYPE_12__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_3__ cc_var_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_10__ {int /*<<< orphan*/  cc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 double NAN ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/  const**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,double*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

int FUNC8(parser_ctx_t *ctx, ccval_t *r)
{
    if(!FUNC7(ctx))
        return -1;

    if(FUNC4(*ctx->ptr)) {
        double n;

        if(!FUNC6(ctx, &n))
            return -1;

        *r = FUNC1(n);
        return 1;
    }

    if(*ctx->ptr == '@') {
        const WCHAR *ident;
        unsigned ident_len;
        cc_var_t *cc_var;

        if(!FUNC5(ctx, &ident, &ident_len))
            return -1;

        cc_var = FUNC3(ctx->script->cc, ident, ident_len);
        *r = cc_var ? cc_var->val : FUNC1(NAN);
        return 1;
    }

    if(!FUNC2(ctx, L"true", NULL)) {
        *r = FUNC0(TRUE);
        return 1;
    }

    if(!FUNC2(ctx, L"false", NULL)) {
        *r = FUNC0(FALSE);
        return 1;
    }

    return 0;
}