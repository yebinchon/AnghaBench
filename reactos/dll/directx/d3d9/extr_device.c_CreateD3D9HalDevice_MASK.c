#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct IDirect3DDevice9 {int dummy; } ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LPDIRECT3DDEVICE9_INT ;
typedef  int /*<<< orphan*/  LPDIRECT3D9_INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  D3DPRESENT_PARAMETERS ;
typedef  int /*<<< orphan*/  D3D9HALDEVICE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  D3DDEVTYPE_HAL ; 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  DDERR_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

HRESULT FUNC5(LPDIRECT3D9_INT pDirect3D9, UINT Adapter,
                            HWND hFocusWindow, DWORD BehaviourFlags,
                            D3DPRESENT_PARAMETERS* pPresentationParameters,
                            DWORD NumAdaptersToCreate,
                            struct IDirect3DDevice9** ppReturnedDeviceInterface)
{
    HRESULT Ret;

    if (FUNC3(FUNC0((LPVOID *)ppReturnedDeviceInterface, sizeof(D3D9HALDEVICE))))
    {
        FUNC2("Not enough memory to create HAL device");
        return DDERR_OUTOFMEMORY;
    }

    Ret = FUNC4((LPDIRECT3DDEVICE9_INT)*ppReturnedDeviceInterface, pDirect3D9, Adapter,
                             D3DDEVTYPE_HAL, hFocusWindow, BehaviourFlags,
                             pPresentationParameters, NumAdaptersToCreate);

    if (FUNC3(Ret))
    {
        FUNC1((LPVOID)*ppReturnedDeviceInterface);
        return Ret;
    }

    return D3D_OK;
}