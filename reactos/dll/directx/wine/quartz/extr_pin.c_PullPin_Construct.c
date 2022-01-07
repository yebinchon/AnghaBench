
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ dir; } ;
struct TYPE_9__ {int IPin_iface; } ;
struct TYPE_10__ {TYPE_1__ pin; } ;
typedef int STOPPROCESSPROC ;
typedef int SAMPLEPROC_PULL ;
typedef int REQUESTPROC ;
typedef int QUERYACCEPTPROC ;
typedef TYPE_2__ PullPin ;
typedef TYPE_3__ PIN_INFO ;
typedef int LPVOID ;
typedef int LPCRITICAL_SECTION ;
typedef int IPinVtbl ;
typedef int IPin ;
typedef int HRESULT ;
typedef int CLEANUPPROC ;


 TYPE_2__* CoTaskMemAlloc (int) ;
 int CoTaskMemFree (TYPE_2__*) ;
 int ERR (char*,scalar_t__) ;
 int E_FAIL ;
 int E_INVALIDARG ;
 int E_OUTOFMEMORY ;
 scalar_t__ PINDIR_INPUT ;
 int PullPin_Init (int const*,TYPE_3__ const*,int ,int ,int ,int ,int ,int ,int ,TYPE_2__*) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;

HRESULT PullPin_Construct(const IPinVtbl *PullPin_Vtbl, const PIN_INFO * pPinInfo,
                          SAMPLEPROC_PULL pSampleProc, LPVOID pUserData, QUERYACCEPTPROC pQueryAccept,
                          CLEANUPPROC pCleanUp, REQUESTPROC pCustomRequest, STOPPROCESSPROC pDone,
                          LPCRITICAL_SECTION pCritSec, IPin ** ppPin)
{
    PullPin * pPinImpl;

    *ppPin = ((void*)0);

    if (pPinInfo->dir != PINDIR_INPUT)
    {
        ERR("Pin direction(%x) != PINDIR_INPUT\n", pPinInfo->dir);
        return E_INVALIDARG;
    }

    pPinImpl = CoTaskMemAlloc(sizeof(*pPinImpl));

    if (!pPinImpl)
        return E_OUTOFMEMORY;

    if (SUCCEEDED(PullPin_Init(PullPin_Vtbl, pPinInfo, pSampleProc, pUserData, pQueryAccept, pCleanUp, pCustomRequest, pDone, pCritSec, pPinImpl)))
    {
        *ppPin = &pPinImpl->pin.IPin_iface;
        return S_OK;
    }

    CoTaskMemFree(pPinImpl);
    return E_FAIL;
}
