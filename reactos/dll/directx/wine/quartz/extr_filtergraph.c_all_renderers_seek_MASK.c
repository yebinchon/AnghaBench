#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ (* fnFoundSeek ) (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;
typedef  scalar_t__ ULONG ;
struct TYPE_7__ {int nFilters; int /*<<< orphan*/ ** ppFiltersInGraph; } ;
typedef  int /*<<< orphan*/  IMediaSeeking ;
typedef  TYPE_1__ IFilterGraphImpl ;
typedef  int /*<<< orphan*/  IBaseFilter ;
typedef  int /*<<< orphan*/  IAMFilterMiscFlags ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ AM_FILTER_MISC_FLAGS_IS_RENDERER ; 
 scalar_t__ E_NOTIMPL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IAMFilterMiscFlags ; 
 int /*<<< orphan*/  IID_IMediaSeeking ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_1__*,scalar_t__ (*) (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ),int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 

__attribute__((used)) static HRESULT FUNC7(IFilterGraphImpl *This, fnFoundSeek FoundSeek, DWORD_PTR arg) {
    BOOL allnotimpl = TRUE;
    int i;
    HRESULT hr, hr_return = S_OK;

    FUNC6("(%p)->(%p %08lx)\n", This, FoundSeek, arg);
    /* Send a message to all renderers, they are responsible for broadcasting it further */

    for(i = 0; i < This->nFilters; i++)
    {
        IMediaSeeking *seek = NULL;
        IBaseFilter* pfilter = This->ppFiltersInGraph[i];
        IAMFilterMiscFlags *flags = NULL;
        ULONG filterflags;
        FUNC3(pfilter, &IID_IAMFilterMiscFlags, (void**)&flags);
        if (!flags)
            continue;
        filterflags = FUNC1(flags);
        FUNC2(flags);
        if (filterflags != AM_FILTER_MISC_FLAGS_IS_RENDERER)
            continue;

        FUNC3(pfilter, &IID_IMediaSeeking, (void**)&seek);
        if (!seek)
            continue;
        hr = FoundSeek(This, seek, arg);
        FUNC4(seek);
        if (hr_return != E_NOTIMPL)
            allnotimpl = FALSE;
        if (hr_return == S_OK || (FUNC0(hr) && hr != E_NOTIMPL && FUNC5(hr_return)))
            hr_return = hr;
    }

    if (allnotimpl)
        return E_NOTIMPL;
    return hr_return;
}