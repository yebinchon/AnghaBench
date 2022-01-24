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
struct TYPE_3__ {int /*<<< orphan*/ * pDS8; int /*<<< orphan*/ * pDS; int /*<<< orphan*/ * pUnknown; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  scalar_t__ LPDIRECTSOUND8 ;
typedef  TYPE_1__ IDirectSoundImpl ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_NOINTERFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_IDirectSound ; 
 int /*<<< orphan*/  IID_IDirectSound8 ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC10(
    LPDIRECTSOUND8 iface,
    REFIID riid,
    LPVOID * ppobj)
{
    IDirectSoundImpl *This = (IDirectSoundImpl *)iface;
    FUNC7("(%p,%s,%p)\n",This,FUNC9(riid),ppobj);

    if (ppobj == NULL) {
        FUNC8("invalid parameter\n");
        return E_INVALIDARG;
    }

    if (FUNC6(riid, &IID_IUnknown)) {
        if (!This->pUnknown) {
            FUNC5(iface, &This->pUnknown);
            if (!This->pUnknown) {
                FUNC8("IDirectSound8_IUnknown_Create() failed\n");
                *ppobj = NULL;
                return E_NOINTERFACE;
            }
        }
        FUNC4(This->pUnknown);
        *ppobj = This->pUnknown;
        return S_OK;
    } else if (FUNC6(riid, &IID_IDirectSound)) {
        if (!This->pDS) {
            FUNC3(iface, &This->pDS);
            if (!This->pDS) {
                FUNC8("IDirectSound8_IDirectSound_Create() failed\n");
                *ppobj = NULL;
                return E_NOINTERFACE;
            }
        }
        FUNC2(This->pDS);
        *ppobj = This->pDS;
        return S_OK;
    } else if (FUNC6(riid, &IID_IDirectSound8)) {
        if (!This->pDS8) {
            FUNC1(iface, &This->pDS8);
            if (!This->pDS8) {
                FUNC8("IDirectSound8_IDirectSound8_Create() failed\n");
                *ppobj = NULL;
                return E_NOINTERFACE;
            }
        }
        FUNC0(This->pDS8);
        *ppobj = This->pDS8;
        return S_OK;
    }

    *ppobj = NULL;
    FUNC8("Unknown IID %s\n",FUNC9(riid));
    return E_NOINTERFACE;
}