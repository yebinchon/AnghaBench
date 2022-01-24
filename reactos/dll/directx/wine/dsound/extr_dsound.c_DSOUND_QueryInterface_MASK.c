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
struct TYPE_3__ {int /*<<< orphan*/ * pDS; int /*<<< orphan*/ * pUnknown; } ;
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
 int /*<<< orphan*/  IID_IDirectSound ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC8(
    LPDIRECTSOUND8 iface,
    REFIID riid,
    LPVOID * ppobj)
{
    IDirectSoundImpl *This = (IDirectSoundImpl *)iface;
    FUNC5("(%p,%s,%p)\n",This,FUNC7(riid),ppobj);

    if (ppobj == NULL) {
        FUNC6("invalid parameter\n");
        return E_INVALIDARG;
    }

    if (FUNC4(riid, &IID_IUnknown)) {
        if (!This->pUnknown) {
            FUNC3(iface, &This->pUnknown);
            if (!This->pUnknown) {
                FUNC6("IDirectSound_IUnknown_Create() failed\n");
                *ppobj = NULL;
                return E_NOINTERFACE;
            }
        }
        FUNC2(This->pUnknown);
        *ppobj = This->pUnknown;
        return S_OK;
    } else if (FUNC4(riid, &IID_IDirectSound)) {
        if (!This->pDS) {
            FUNC1(iface, &This->pDS);
            if (!This->pDS) {
                FUNC6("IDirectSound_IDirectSound_Create() failed\n");
                *ppobj = NULL;
                return E_NOINTERFACE;
            }
        }
        FUNC0(This->pDS);
        *ppobj = This->pDS;
        return S_OK;
    }

    *ppobj = NULL;
    FUNC6("Unknown IID %s\n",FUNC7(riid));
    return E_NOINTERFACE;
}