
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int IBaseFilter_iface; } ;
struct TYPE_11__ {TYPE_2__ filter; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_10__ {TYPE_5__ Parser; int seek; TYPE_1__ IAMStreamSelect_iface; } ;
typedef TYPE_3__ MPEGSplitterImpl ;
typedef int * LPVOID ;
typedef int IUnknown ;
typedef int HRESULT ;


 int AMStreamSelectVtbl ;
 int CLASS_E_NOAGGREGATION ;
 int CLSID_MPEG1Splitter ;
 TYPE_3__* CoTaskMemAlloc (int) ;
 int CoTaskMemFree (TYPE_3__*) ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int MPEGSplitter_Vtbl ;
 int MPEGSplitter_cleanup ;
 int MPEGSplitter_disconnect ;
 int MPEGSplitter_first_request ;
 int MPEGSplitter_pre_connect ;
 int MPEGSplitter_process_sample ;
 int MPEGSplitter_query_accept ;
 int MPEGSplitter_seek ;
 int Parser_Create (TYPE_5__*,int *,int *,int ,int ,int ,int ,int ,int ,int *,int *,int ,int *) ;
 int TRACE (char*,int *,int **) ;
 int TRUE ;
 int ZeroMemory (TYPE_3__*,int) ;

HRESULT MPEGSplitter_create(IUnknown * pUnkOuter, LPVOID * ppv)
{
    MPEGSplitterImpl *This;
    HRESULT hr = E_FAIL;

    TRACE("(%p, %p)\n", pUnkOuter, ppv);

    *ppv = ((void*)0);

    if (pUnkOuter)
        return CLASS_E_NOAGGREGATION;

    This = CoTaskMemAlloc(sizeof(MPEGSplitterImpl));
    if (!This)
        return E_OUTOFMEMORY;

    ZeroMemory(This, sizeof(MPEGSplitterImpl));
    hr = Parser_Create(&(This->Parser), &MPEGSplitter_Vtbl, &CLSID_MPEG1Splitter, MPEGSplitter_process_sample, MPEGSplitter_query_accept, MPEGSplitter_pre_connect, MPEGSplitter_cleanup, MPEGSplitter_disconnect, MPEGSplitter_first_request, ((void*)0), ((void*)0), MPEGSplitter_seek, ((void*)0));
    if (FAILED(hr))
    {
        CoTaskMemFree(This);
        return hr;
    }
    This->IAMStreamSelect_iface.lpVtbl = &AMStreamSelectVtbl;
    This->seek = TRUE;


    *ppv = &This->Parser.filter.IBaseFilter_iface;

    return hr;
}
