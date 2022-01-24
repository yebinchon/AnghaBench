#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ pUnknown; } ;
typedef  int /*<<< orphan*/  LPDIRECT3DDEVICE9 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DIRECT3DDEVICE9_INT ;
typedef  TYPE_1__ D3D9BaseObject ;

/* Variables and functions */
 int /*<<< orphan*/  D3DERR_INVALIDCALL ; 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  E_NOINTERFACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IDirect3DDevice9 ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,void**) ; 

HRESULT FUNC3(D3D9BaseObject* pBaseObject, DIRECT3DDEVICE9_INT** ppDevice)
{
    if (NULL == ppDevice)
        return D3DERR_INVALIDCALL;

    *ppDevice = NULL;

    if (pBaseObject->pUnknown)
    {
        LPDIRECT3DDEVICE9 pDevice;
        if (FUNC0(FUNC2(pBaseObject->pUnknown, &IID_IDirect3DDevice9, (void**)&pDevice)))
            return E_NOINTERFACE;

        *ppDevice = FUNC1(pDevice);
        return D3D_OK;
    }

    return E_NOINTERFACE;
}