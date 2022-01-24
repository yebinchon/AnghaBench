#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_1__ IDirectXFileEnumObject_iface; } ;
typedef  TYPE_2__ IDirectXFileEnumObjectImpl ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DXFILEERR_BADALLOC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IDirectXFileEnumObject_Vtbl ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_2__**) ; 

__attribute__((used)) static HRESULT FUNC3(IDirectXFileEnumObjectImpl** ppObj)
{
    IDirectXFileEnumObjectImpl* object;

    FUNC2("(%p)\n", ppObj);

    object = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, sizeof(IDirectXFileEnumObjectImpl));
    if (!object)
        return DXFILEERR_BADALLOC;

    object->IDirectXFileEnumObject_iface.lpVtbl = &IDirectXFileEnumObject_Vtbl;
    object->ref = 1;

    *ppObj = object;

    return S_OK;
}