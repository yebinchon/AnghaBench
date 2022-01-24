#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* script; } ;
typedef  TYPE_2__ parser_ctx_t ;
struct TYPE_11__ {int /*<<< orphan*/ * vars; } ;
typedef  TYPE_3__ cc_ctx_t ;
struct TYPE_9__ {TYPE_3__* cc; } ;
typedef  double DOUBLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ JSCRIPT_BUILD_VERSION ; 
 scalar_t__ JSCRIPT_MAJOR_VERSION ; 
 scalar_t__ JSCRIPT_MINOR_VERSION ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_3__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static BOOL FUNC6(parser_ctx_t *ctx)
{
    cc_ctx_t *cc;

    if(ctx->script->cc)
        return TRUE;

    cc = FUNC2(sizeof(cc_ctx_t));
    if(!cc) {
        FUNC3(ctx, E_OUTOFMEMORY);
        return FALSE;
    }

    cc->vars = NULL;

    if(!FUNC4(cc, L"_jscript", -1, FUNC0(TRUE))
       || !FUNC4(cc, sizeof(void*) == 8 ? L"_win64" : L"_win32", -1, FUNC0(TRUE))
       || !FUNC4(cc, sizeof(void*) == 8 ? L"_amd64" : L"_x86", -1, FUNC0(TRUE))
       || !FUNC4(cc, L"_jscript_version", -1, FUNC1(JSCRIPT_MAJOR_VERSION + (DOUBLE)JSCRIPT_MINOR_VERSION/10.0))
       || !FUNC4(cc, L"_jscript_build", -1, FUNC1(JSCRIPT_BUILD_VERSION))) {
        FUNC5(cc);
        FUNC3(ctx, E_OUTOFMEMORY);
        return FALSE;
    }

    ctx->script->cc = cc;
    return TRUE;
}