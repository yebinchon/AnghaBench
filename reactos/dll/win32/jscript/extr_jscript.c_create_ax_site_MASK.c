#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  site; } ;
typedef  TYPE_2__ script_ctx_t ;
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int ref; TYPE_1__ IServiceProvider_iface; int /*<<< orphan*/ * sp; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IServiceProvider ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_3__ AXSite ;

/* Variables and functions */
 int /*<<< orphan*/  AXSiteVtbl ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IServiceProvider ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int) ; 

IUnknown *FUNC5(script_ctx_t *ctx)
{
    IServiceProvider *sp = NULL;
    AXSite *ret;
    HRESULT hres;

    hres = FUNC1(ctx->site, &IID_IServiceProvider, (void**)&sp);
    if(FUNC0(hres)) {
        FUNC3("Could not get IServiceProvider iface: %08x\n", hres);
    }

    ret = FUNC4(sizeof(AXSite));
    if(!ret) {
        FUNC2(sp);
        return NULL;
    }

    ret->IServiceProvider_iface.lpVtbl = &AXSiteVtbl;
    ret->ref = 1;
    ret->sp = sp;

    return (IUnknown*)&ret->IServiceProvider_iface;
}