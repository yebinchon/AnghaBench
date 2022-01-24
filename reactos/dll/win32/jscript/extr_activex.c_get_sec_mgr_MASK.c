#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * secmgr; int /*<<< orphan*/  site; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  IServiceProvider ;
typedef  int /*<<< orphan*/  IInternetHostSecurityManager ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IInternetHostSecurityManager ; 
 int /*<<< orphan*/  IID_IServiceProvider ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SID_SInternetHostSecurityManager ; 

__attribute__((used)) static IInternetHostSecurityManager *FUNC4(script_ctx_t *ctx)
{
    IInternetHostSecurityManager *secmgr;
    IServiceProvider *sp;
    HRESULT hres;

    if(!ctx->site)
        return NULL;

    if(ctx->secmgr)
        return ctx->secmgr;

    hres = FUNC1(ctx->site, &IID_IServiceProvider, (void**)&sp);
    if(FUNC0(hres))
        return NULL;

    hres = FUNC2(sp, &SID_SInternetHostSecurityManager, &IID_IInternetHostSecurityManager,
            (void**)&secmgr);
    FUNC3(sp);
    if(FUNC0(hres))
        return NULL;

    return ctx->secmgr = secmgr;
}