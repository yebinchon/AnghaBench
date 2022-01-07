
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ (* fnFoundSeek ) (TYPE_1__*,int *,int ) ;
typedef scalar_t__ ULONG ;
struct TYPE_7__ {int nFilters; int ** ppFiltersInGraph; } ;
typedef int IMediaSeeking ;
typedef TYPE_1__ IFilterGraphImpl ;
typedef int IBaseFilter ;
typedef int IAMFilterMiscFlags ;
typedef scalar_t__ HRESULT ;
typedef int DWORD_PTR ;
typedef scalar_t__ BOOL ;


 scalar_t__ AM_FILTER_MISC_FLAGS_IS_RENDERER ;
 scalar_t__ E_NOTIMPL ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ FALSE ;
 scalar_t__ IAMFilterMiscFlags_GetMiscFlags (int *) ;
 int IAMFilterMiscFlags_Release (int *) ;
 int IBaseFilter_QueryInterface (int *,int *,void**) ;
 int IID_IAMFilterMiscFlags ;
 int IID_IMediaSeeking ;
 int IMediaSeeking_Release (int *) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int TRACE (char*,TYPE_1__*,scalar_t__ (*) (TYPE_1__*,int *,int ),int ) ;
 scalar_t__ TRUE ;

__attribute__((used)) static HRESULT all_renderers_seek(IFilterGraphImpl *This, fnFoundSeek FoundSeek, DWORD_PTR arg) {
    BOOL allnotimpl = TRUE;
    int i;
    HRESULT hr, hr_return = S_OK;

    TRACE("(%p)->(%p %08lx)\n", This, FoundSeek, arg);


    for(i = 0; i < This->nFilters; i++)
    {
        IMediaSeeking *seek = ((void*)0);
        IBaseFilter* pfilter = This->ppFiltersInGraph[i];
        IAMFilterMiscFlags *flags = ((void*)0);
        ULONG filterflags;
        IBaseFilter_QueryInterface(pfilter, &IID_IAMFilterMiscFlags, (void**)&flags);
        if (!flags)
            continue;
        filterflags = IAMFilterMiscFlags_GetMiscFlags(flags);
        IAMFilterMiscFlags_Release(flags);
        if (filterflags != AM_FILTER_MISC_FLAGS_IS_RENDERER)
            continue;

        IBaseFilter_QueryInterface(pfilter, &IID_IMediaSeeking, (void**)&seek);
        if (!seek)
            continue;
        hr = FoundSeek(This, seek, arg);
        IMediaSeeking_Release(seek);
        if (hr_return != E_NOTIMPL)
            allnotimpl = FALSE;
        if (hr_return == S_OK || (FAILED(hr) && hr != E_NOTIMPL && SUCCEEDED(hr_return)))
            hr_return = hr;
    }

    if (allnotimpl)
        return E_NOTIMPL;
    return hr_return;
}
