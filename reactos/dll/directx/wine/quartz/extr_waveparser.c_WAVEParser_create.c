
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int IBaseFilter_iface; } ;
struct TYPE_7__ {TYPE_1__ filter; } ;
struct TYPE_6__ {TYPE_3__ Parser; } ;
typedef TYPE_2__ WAVEParserImpl ;
typedef int * LPVOID ;
typedef int IUnknown ;
typedef int HRESULT ;


 int CLASS_E_NOAGGREGATION ;
 int CLSID_WAVEParser ;
 TYPE_2__* CoTaskMemAlloc (int) ;
 scalar_t__ FAILED (int ) ;
 int Parser_Create (TYPE_3__*,int *,int *,int ,int ,int ,int ,int ,int ,int *,int *,int ,int *) ;
 int TRACE (char*,int *,int **) ;
 int WAVEParserImpl_seek ;
 int WAVEParser_Cleanup ;
 int WAVEParser_InputPin_PreConnect ;
 int WAVEParser_QueryAccept ;
 int WAVEParser_Sample ;
 int WAVEParser_Vtbl ;
 int WAVEParser_disconnect ;
 int WAVEParser_first_request ;

HRESULT WAVEParser_create(IUnknown * pUnkOuter, LPVOID * ppv)
{
    HRESULT hr;
    WAVEParserImpl * This;

    TRACE("(%p, %p)\n", pUnkOuter, ppv);

    *ppv = ((void*)0);

    if (pUnkOuter)
        return CLASS_E_NOAGGREGATION;


    This = CoTaskMemAlloc(sizeof(WAVEParserImpl));

    hr = Parser_Create(&(This->Parser), &WAVEParser_Vtbl, &CLSID_WAVEParser, WAVEParser_Sample, WAVEParser_QueryAccept, WAVEParser_InputPin_PreConnect, WAVEParser_Cleanup, WAVEParser_disconnect, WAVEParser_first_request, ((void*)0), ((void*)0), WAVEParserImpl_seek, ((void*)0));

    if (FAILED(hr))
        return hr;

    *ppv = &This->Parser.filter.IBaseFilter_iface;

    return hr;
}
