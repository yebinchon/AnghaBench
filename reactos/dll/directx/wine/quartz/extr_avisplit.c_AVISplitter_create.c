
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int IBaseFilter_iface; } ;
struct TYPE_7__ {TYPE_1__ filter; } ;
struct TYPE_6__ {TYPE_3__ Parser; int * oldindex; int * streams; } ;
typedef int * LPVOID ;
typedef int IUnknown ;
typedef int HRESULT ;
typedef TYPE_2__ AVISplitterImpl ;


 int AVISplitterImpl_Vtbl ;
 int AVISplitter_Disconnect ;
 int AVISplitter_Flush ;
 int AVISplitter_InputPin_PreConnect ;
 int AVISplitter_QueryAccept ;
 int AVISplitter_Sample ;
 int AVISplitter_done_process ;
 int AVISplitter_first_request ;
 int AVISplitter_seek ;
 int CLASS_E_NOAGGREGATION ;
 int CLSID_AviSplitter ;
 TYPE_2__* CoTaskMemAlloc (int) ;
 scalar_t__ FAILED (int ) ;
 int Parser_Create (TYPE_3__*,int *,int *,int ,int ,int ,int ,int ,int ,int ,int *,int ,int *) ;
 int TRACE (char*,int *,int **) ;

HRESULT AVISplitter_create(IUnknown * pUnkOuter, LPVOID * ppv)
{
    HRESULT hr;
    AVISplitterImpl * This;

    TRACE("(%p, %p)\n", pUnkOuter, ppv);

    *ppv = ((void*)0);

    if (pUnkOuter)
        return CLASS_E_NOAGGREGATION;


    This = CoTaskMemAlloc(sizeof(AVISplitterImpl));

    This->streams = ((void*)0);
    This->oldindex = ((void*)0);

    hr = Parser_Create(&(This->Parser), &AVISplitterImpl_Vtbl, &CLSID_AviSplitter, AVISplitter_Sample, AVISplitter_QueryAccept, AVISplitter_InputPin_PreConnect, AVISplitter_Flush, AVISplitter_Disconnect, AVISplitter_first_request, AVISplitter_done_process, ((void*)0), AVISplitter_seek, ((void*)0));

    if (FAILED(hr))
        return hr;

    *ppv = &This->Parser.filter.IBaseFilter_iface;

    return hr;
}
