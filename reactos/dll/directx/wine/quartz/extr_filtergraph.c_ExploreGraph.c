
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int (* fnFoundFilter ) (int *,int ) ;
typedef scalar_t__ ULONG ;
struct TYPE_6__ {int nRenderers; } ;
struct TYPE_5__ {int * pFilter; } ;
typedef TYPE_1__ PIN_INFO ;
typedef int IPin ;
typedef TYPE_2__ IFilterGraphImpl ;
typedef int HRESULT ;
typedef int DWORD_PTR ;


 int CoTaskMemFree (int **) ;
 int GetInternalConnections (int *,int *,int ***,scalar_t__*) ;
 int IBaseFilter_Release (int *) ;
 int IPin_ConnectedTo (int *,int **) ;
 int IPin_QueryPinInfo (int *,TYPE_1__*) ;
 int IPin_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,...) ;

__attribute__((used)) static HRESULT ExploreGraph(IFilterGraphImpl* pGraph, IPin* pOutputPin, fnFoundFilter FoundFilter, DWORD_PTR data)
{
    HRESULT hr;
    IPin* pInputPin;
    IPin** ppPins;
    ULONG nb;
    ULONG i;
    PIN_INFO PinInfo;

    TRACE("%p %p\n", pGraph, pOutputPin);
    PinInfo.pFilter = ((void*)0);

    hr = IPin_ConnectedTo(pOutputPin, &pInputPin);

    if (SUCCEEDED(hr))
    {
        hr = IPin_QueryPinInfo(pInputPin, &PinInfo);
        if (SUCCEEDED(hr))
            hr = GetInternalConnections(PinInfo.pFilter, pInputPin, &ppPins, &nb);
        IPin_Release(pInputPin);
    }

    if (SUCCEEDED(hr))
    {
        if (nb == 0)
        {
            TRACE("Reached a renderer\n");

            pGraph->nRenderers++;
        }
        else
        {
            for(i = 0; i < nb; i++)
            {



                ExploreGraph(pGraph, ppPins[i], FoundFilter, data);
                IPin_Release(ppPins[i]);
            }

            CoTaskMemFree(ppPins);
        }
        TRACE("Doing stuff with filter %p\n", PinInfo.pFilter);

        FoundFilter(PinInfo.pFilter, data);
    }

    if (PinInfo.pFilter) IBaseFilter_Release(PinInfo.pFilter);
    return hr;
}
