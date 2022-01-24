#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IClassFactory_iface; int /*<<< orphan*/  clsid; } ;
typedef  int /*<<< orphan*/  IID ;
typedef  TYPE_1__ IClassFactoryImpl ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/  const*,void**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  iclassfact ; 

__attribute__((used)) static HRESULT FUNC4(const CLSID *clsid, const IID *riid, void **ppv)
{
    IClassFactoryImpl *cf;
    HRESULT hr;

    *ppv = NULL;

    cf = FUNC1(FUNC0(), 0, sizeof(*cf));
    if (!cf)
        return E_OUTOFMEMORY;

    cf->IClassFactory_iface.lpVtbl = &iclassfact;
    cf->ref = 1;
    cf->clsid = *clsid;

    hr = FUNC2(&cf->IClassFactory_iface, riid, ppv);
    FUNC3(&cf->IClassFactory_iface);

    return hr;
}