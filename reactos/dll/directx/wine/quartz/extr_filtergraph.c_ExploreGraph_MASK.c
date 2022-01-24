#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* fnFoundFilter ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;
typedef  scalar_t__ ULONG ;
struct TYPE_6__ {int /*<<< orphan*/  nRenderers; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pFilter; } ;
typedef  TYPE_1__ PIN_INFO ;
typedef  int /*<<< orphan*/  IPin ;
typedef  TYPE_2__ IFilterGraphImpl ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ***,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static HRESULT FUNC8(IFilterGraphImpl* pGraph, IPin* pOutputPin, fnFoundFilter FoundFilter, DWORD_PTR data)
{
    HRESULT hr;
    IPin* pInputPin;
    IPin** ppPins;
    ULONG nb;
    ULONG i;
    PIN_INFO PinInfo;

    FUNC7("%p %p\n", pGraph, pOutputPin);
    PinInfo.pFilter = NULL;

    hr = FUNC3(pOutputPin, &pInputPin);

    if (FUNC6(hr))
    {
        hr = FUNC4(pInputPin, &PinInfo);
        if (FUNC6(hr))
            hr = FUNC1(PinInfo.pFilter, pInputPin, &ppPins, &nb);
        FUNC5(pInputPin);
    }

    if (FUNC6(hr))
    {
        if (nb == 0)
        {
            FUNC7("Reached a renderer\n");
            /* Count renderers for end of stream notification */
            pGraph->nRenderers++;
        }
        else
        {
            for(i = 0; i < nb; i++)
            {
                /* Explore the graph downstream from this pin
                 * FIXME: We should prevent exploring from a pin more than once. This can happens when
                 * several input pins are connected to the same output (a MUX for instance). */
                FUNC8(pGraph, ppPins[i], FoundFilter, data);
                FUNC5(ppPins[i]);
            }

            FUNC0(ppPins);
        }
        FUNC7("Doing stuff with filter %p\n", PinInfo.pFilter);

        FoundFilter(PinInfo.pFilter, data);
    }

    if (PinInfo.pFilter) FUNC2(PinInfo.pFilter);
    return hr;
}