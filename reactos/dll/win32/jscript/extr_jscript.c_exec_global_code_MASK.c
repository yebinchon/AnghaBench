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
struct TYPE_8__ {int /*<<< orphan*/  global_code; } ;
typedef  TYPE_1__ bytecode_t ;
struct TYPE_10__ {int /*<<< orphan*/  global; } ;
struct TYPE_9__ {int /*<<< orphan*/  site; TYPE_3__* ctx; } ;
typedef  TYPE_2__ JScript ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  EXEC_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC4(JScript *This, bytecode_t *code)
{
    HRESULT hres;

    FUNC0(This->site);

    FUNC2(This->ctx);
    hres = FUNC3(This->ctx, EXEC_GLOBAL, code, &code->global_code, NULL, NULL, NULL, This->ctx->global, 0, NULL, NULL);

    FUNC1(This->site);
    return hres;
}