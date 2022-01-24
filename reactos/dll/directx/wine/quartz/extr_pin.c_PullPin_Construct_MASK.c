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
struct TYPE_11__ {scalar_t__ dir; } ;
struct TYPE_9__ {int /*<<< orphan*/  IPin_iface; } ;
struct TYPE_10__ {TYPE_1__ pin; } ;
typedef  int /*<<< orphan*/  STOPPROCESSPROC ;
typedef  int /*<<< orphan*/  SAMPLEPROC_PULL ;
typedef  int /*<<< orphan*/  REQUESTPROC ;
typedef  int /*<<< orphan*/  QUERYACCEPTPROC ;
typedef  TYPE_2__ PullPin ;
typedef  TYPE_3__ PIN_INFO ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LPCRITICAL_SECTION ;
typedef  int /*<<< orphan*/  IPinVtbl ;
typedef  int /*<<< orphan*/  IPin ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  CLEANUPPROC ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ PINDIR_INPUT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,TYPE_3__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 

HRESULT FUNC5(const IPinVtbl *PullPin_Vtbl, const PIN_INFO * pPinInfo,
                          SAMPLEPROC_PULL pSampleProc, LPVOID pUserData, QUERYACCEPTPROC pQueryAccept,
                          CLEANUPPROC pCleanUp, REQUESTPROC pCustomRequest, STOPPROCESSPROC pDone,
                          LPCRITICAL_SECTION pCritSec, IPin ** ppPin)
{
    PullPin * pPinImpl;

    *ppPin = NULL;

    if (pPinInfo->dir != PINDIR_INPUT)
    {
        FUNC2("Pin direction(%x) != PINDIR_INPUT\n", pPinInfo->dir);
        return E_INVALIDARG;
    }

    pPinImpl = FUNC0(sizeof(*pPinImpl));

    if (!pPinImpl)
        return E_OUTOFMEMORY;

    if (FUNC4(FUNC3(PullPin_Vtbl, pPinInfo, pSampleProc, pUserData, pQueryAccept, pCleanUp, pCustomRequest, pDone, pCritSec, pPinImpl)))
    {
        *ppPin = &pPinImpl->pin.IPin_iface;
        return S_OK;
    }

    FUNC1(pPinImpl);
    return E_FAIL;
}