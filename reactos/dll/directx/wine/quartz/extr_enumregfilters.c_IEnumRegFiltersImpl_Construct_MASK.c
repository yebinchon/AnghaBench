#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int ULONG ;
struct TYPE_13__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_12__ {int refCount; int size; TYPE_3__ IEnumRegFilters_iface; struct TYPE_12__* RegFilters; scalar_t__ uIndex; struct TYPE_12__* Name; int /*<<< orphan*/  Clsid; } ;
typedef  TYPE_1__ REGFILTER ;
typedef  TYPE_1__ IEnumRegFiltersImpl ;
typedef  TYPE_3__ IEnumRegFilters ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  IEnumRegFiltersImpl_Vtbl ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,int const,TYPE_3__**) ; 
 int FUNC4 (TYPE_1__*) ; 

HRESULT FUNC5(REGFILTER* pInRegFilters, const ULONG size, IEnumRegFilters ** ppEnum)
{
    IEnumRegFiltersImpl* pEnumRegFilters;
    REGFILTER* pRegFilters = NULL;
    unsigned int i;

    FUNC3("(%p, %d, %p)\n", pInRegFilters, size, ppEnum);

    pEnumRegFilters = FUNC0(sizeof(IEnumRegFiltersImpl));
    if (!pEnumRegFilters)
    {
        *ppEnum = NULL;
        return E_OUTOFMEMORY;
    }

    /* Accept size of 0 */
    if (size)
    {
        pRegFilters = FUNC0(sizeof(REGFILTER)*size);
        if (!pRegFilters)
	{
            FUNC1(pEnumRegFilters);
            *ppEnum = NULL;
           return E_OUTOFMEMORY;
        }
    }

    for(i = 0; i < size; i++)
    {
        pRegFilters[i].Clsid = pInRegFilters[i].Clsid;
        pRegFilters[i].Name = FUNC0((FUNC4(pInRegFilters[i].Name)+1)*sizeof(WCHAR));
        if (!pRegFilters[i].Name)
        {
            while(i)
                FUNC1(pRegFilters[--i].Name);
            FUNC1(pRegFilters);
            FUNC1(pEnumRegFilters);
            return E_OUTOFMEMORY;
        }
        FUNC2(pRegFilters[i].Name, pInRegFilters[i].Name, (FUNC4(pInRegFilters[i].Name)+1)*sizeof(WCHAR));
    }

    pEnumRegFilters->IEnumRegFilters_iface.lpVtbl = &IEnumRegFiltersImpl_Vtbl;
    pEnumRegFilters->refCount = 1;
    pEnumRegFilters->uIndex = 0;
    pEnumRegFilters->RegFilters = pRegFilters;
    pEnumRegFilters->size = size;

    *ppEnum = &pEnumRegFilters->IEnumRegFilters_iface;

    return S_OK;
}