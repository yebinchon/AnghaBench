#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  IBaseFilter_iface; } ;
struct TYPE_11__ {TYPE_2__ filter; } ;
struct TYPE_8__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_10__ {TYPE_5__ Parser; int /*<<< orphan*/  seek; TYPE_1__ IAMStreamSelect_iface; } ;
typedef  TYPE_3__ MPEGSplitterImpl ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  AMStreamSelectVtbl ; 
 int /*<<< orphan*/  CLASS_E_NOAGGREGATION ; 
 int /*<<< orphan*/  CLSID_MPEG1Splitter ; 
 TYPE_3__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPEGSplitter_Vtbl ; 
 int /*<<< orphan*/  MPEGSplitter_cleanup ; 
 int /*<<< orphan*/  MPEGSplitter_disconnect ; 
 int /*<<< orphan*/  MPEGSplitter_first_request ; 
 int /*<<< orphan*/  MPEGSplitter_pre_connect ; 
 int /*<<< orphan*/  MPEGSplitter_process_sample ; 
 int /*<<< orphan*/  MPEGSplitter_query_accept ; 
 int /*<<< orphan*/  MPEGSplitter_seek ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 

HRESULT FUNC6(IUnknown * pUnkOuter, LPVOID * ppv)
{
    MPEGSplitterImpl *This;
    HRESULT hr = E_FAIL;

    FUNC4("(%p, %p)\n", pUnkOuter, ppv);

    *ppv = NULL;

    if (pUnkOuter)
        return CLASS_E_NOAGGREGATION;

    This = FUNC0(sizeof(MPEGSplitterImpl));
    if (!This)
        return E_OUTOFMEMORY;

    FUNC5(This, sizeof(MPEGSplitterImpl));
    hr = FUNC3(&(This->Parser), &MPEGSplitter_Vtbl, &CLSID_MPEG1Splitter, MPEGSplitter_process_sample, MPEGSplitter_query_accept, MPEGSplitter_pre_connect, MPEGSplitter_cleanup, MPEGSplitter_disconnect, MPEGSplitter_first_request, NULL, NULL, MPEGSplitter_seek, NULL);
    if (FUNC2(hr))
    {
        FUNC1(This);
        return hr;
    }
    This->IAMStreamSelect_iface.lpVtbl = &AMStreamSelectVtbl;
    This->seek = TRUE;

    /* Note: This memory is managed by the parser filter once created */
    *ppv = &This->Parser.filter.IBaseFilter_iface;

    return hr;
}