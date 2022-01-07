
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pDS; int * pUnknown; } ;
typedef int REFIID ;
typedef int * LPVOID ;
typedef scalar_t__ LPDIRECTSOUND8 ;
typedef TYPE_1__ IDirectSoundImpl ;
typedef int HRESULT ;


 int E_INVALIDARG ;
 int E_NOINTERFACE ;
 int IDirectSound_IDirectSound_AddRef (int *) ;
 int IDirectSound_IDirectSound_Create (scalar_t__,int **) ;
 int IDirectSound_IUnknown_AddRef (int *) ;
 int IDirectSound_IUnknown_Create (scalar_t__,int **) ;
 int IID_IDirectSound ;
 int IID_IUnknown ;
 scalar_t__ IsEqualIID (int ,int *) ;
 int S_OK ;
 int TRACE (char*,TYPE_1__*,int ,int **) ;
 int WARN (char*,...) ;
 int debugstr_guid (int ) ;

__attribute__((used)) static HRESULT DSOUND_QueryInterface(
    LPDIRECTSOUND8 iface,
    REFIID riid,
    LPVOID * ppobj)
{
    IDirectSoundImpl *This = (IDirectSoundImpl *)iface;
    TRACE("(%p,%s,%p)\n",This,debugstr_guid(riid),ppobj);

    if (ppobj == ((void*)0)) {
        WARN("invalid parameter\n");
        return E_INVALIDARG;
    }

    if (IsEqualIID(riid, &IID_IUnknown)) {
        if (!This->pUnknown) {
            IDirectSound_IUnknown_Create(iface, &This->pUnknown);
            if (!This->pUnknown) {
                WARN("IDirectSound_IUnknown_Create() failed\n");
                *ppobj = ((void*)0);
                return E_NOINTERFACE;
            }
        }
        IDirectSound_IUnknown_AddRef(This->pUnknown);
        *ppobj = This->pUnknown;
        return S_OK;
    } else if (IsEqualIID(riid, &IID_IDirectSound)) {
        if (!This->pDS) {
            IDirectSound_IDirectSound_Create(iface, &This->pDS);
            if (!This->pDS) {
                WARN("IDirectSound_IDirectSound_Create() failed\n");
                *ppobj = ((void*)0);
                return E_NOINTERFACE;
            }
        }
        IDirectSound_IDirectSound_AddRef(This->pDS);
        *ppobj = This->pDS;
        return S_OK;
    }

    *ppobj = ((void*)0);
    WARN("Unknown IID %s\n",debugstr_guid(riid));
    return E_NOINTERFACE;
}
