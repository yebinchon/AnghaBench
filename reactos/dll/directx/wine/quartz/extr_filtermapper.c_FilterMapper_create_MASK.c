#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  IFilterMapper_iface; } ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ FilterMapper3Impl ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

HRESULT FUNC3(IUnknown *pUnkOuter, LPVOID *ppObj)
{
    FilterMapper3Impl *pFM2impl;
    HRESULT hr;

    FUNC2("(%p, %p)\n", pUnkOuter, ppObj);

    hr = FUNC1(pUnkOuter, (LPVOID*)&pFM2impl);
    if (FUNC0(hr))
        return hr;

    *ppObj = &pFM2impl->IFilterMapper_iface;

    return hr;
}