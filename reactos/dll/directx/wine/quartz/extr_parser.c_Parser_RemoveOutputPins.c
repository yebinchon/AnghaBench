
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_13__ {TYPE_1__* pFuncsTable; } ;
struct TYPE_12__ {int cStreams; int filter; int ** ppPins; } ;
struct TYPE_11__ {TYPE_2__* (* pfnBreakConnect ) (TYPE_4__*) ;} ;
typedef TYPE_2__ ParserImpl ;
typedef int IPin ;
typedef TYPE_2__* HRESULT ;
typedef TYPE_4__ BaseOutputPin ;


 int BaseFilterImpl_IncrementPinVersion (int *) ;
 int ** CoTaskMemAlloc (int) ;
 int CoTaskMemFree (int **) ;
 int IPin_Release (int *) ;
 TYPE_2__* S_OK ;
 int TRACE (char*,TYPE_2__*) ;
 int memcpy (int **,int **,int) ;
 TYPE_2__* stub1 (TYPE_4__*) ;

__attribute__((used)) static HRESULT Parser_RemoveOutputPins(ParserImpl * This)
{

    HRESULT hr;
    ULONG i;
    IPin ** ppOldPins = This->ppPins;

    TRACE("(%p)\n", This);


    This->ppPins = CoTaskMemAlloc(sizeof(IPin *) * 1);
    memcpy(This->ppPins, ppOldPins, sizeof(IPin *) * 1);

    for (i = 0; i < This->cStreams; i++)
    {
        hr = ((BaseOutputPin *)ppOldPins[i + 1])->pFuncsTable->pfnBreakConnect((BaseOutputPin *)ppOldPins[i + 1]);
        TRACE("Disconnect: %08x\n", hr);
        IPin_Release(ppOldPins[i + 1]);
    }

    BaseFilterImpl_IncrementPinVersion(&This->filter);
    This->cStreams = 0;
    CoTaskMemFree(ppOldPins);

    return S_OK;
}
