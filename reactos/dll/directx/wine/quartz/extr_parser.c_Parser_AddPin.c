
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int IBaseFilter_iface; int csFilter; } ;
struct TYPE_13__ {int cStreams; int ** ppPins; TYPE_8__ filter; } ;
struct TYPE_9__ {int * pFilter; } ;
struct TYPE_10__ {TYPE_1__ pinInfo; } ;
struct TYPE_11__ {TYPE_2__ pin; } ;
struct TYPE_12__ {int allocProps; TYPE_3__ pin; scalar_t__ dwSamplesProcessed; void* pmt; } ;
typedef TYPE_4__ Parser_OutputPin ;
typedef TYPE_5__ ParserImpl ;
typedef int PIN_INFO ;
typedef int IPin ;
typedef int HRESULT ;
typedef int AM_MEDIA_TYPE ;
typedef int ALLOCATOR_PROPERTIES ;


 int BaseFilterImpl_IncrementPinVersion (TYPE_8__*) ;
 int BaseOutputPin_Construct (int *,int,int const*,int *,int *,int **) ;
 void* CoTaskMemAlloc (int) ;
 int CoTaskMemFree (int **) ;
 int CopyMediaType (void*,int const*) ;
 int ERR (char*,int ) ;
 int Parser_OutputPin_Vtbl ;
 scalar_t__ SUCCEEDED (int ) ;
 int memcpy (int **,int **,int) ;
 int output_BaseOutputFuncTable ;
 TYPE_4__* unsafe_impl_Parser_OutputPin_from_IPin (int *) ;

HRESULT Parser_AddPin(ParserImpl * This, const PIN_INFO * piOutput, ALLOCATOR_PROPERTIES * props, const AM_MEDIA_TYPE * amt)
{
    IPin ** ppOldPins;
    HRESULT hr;

    ppOldPins = This->ppPins;

    This->ppPins = CoTaskMemAlloc((This->cStreams + 2) * sizeof(IPin *));
    memcpy(This->ppPins, ppOldPins, (This->cStreams + 1) * sizeof(IPin *));

    hr = BaseOutputPin_Construct(&Parser_OutputPin_Vtbl, sizeof(Parser_OutputPin), piOutput, &output_BaseOutputFuncTable, &This->filter.csFilter, This->ppPins + (This->cStreams + 1));

    if (SUCCEEDED(hr))
    {
        IPin *pPin = This->ppPins[This->cStreams + 1];
        Parser_OutputPin *pin = unsafe_impl_Parser_OutputPin_from_IPin(pPin);
        pin->pmt = CoTaskMemAlloc(sizeof(AM_MEDIA_TYPE));
        CopyMediaType(pin->pmt, amt);
        pin->dwSamplesProcessed = 0;

        pin->pin.pin.pinInfo.pFilter = &This->filter.IBaseFilter_iface;
        pin->allocProps = *props;
        This->cStreams++;
        BaseFilterImpl_IncrementPinVersion(&This->filter);
        CoTaskMemFree(ppOldPins);
    }
    else
    {
        CoTaskMemFree(This->ppPins);
        This->ppPins = ppOldPins;
        ERR("Failed with error %x\n", hr);
    }

    return hr;
}
