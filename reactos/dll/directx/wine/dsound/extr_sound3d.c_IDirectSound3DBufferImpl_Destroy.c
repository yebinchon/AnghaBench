
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPDIRECTSOUND3DBUFFER ;
typedef int IDirectSound3DBufferImpl ;
typedef int HRESULT ;


 scalar_t__ IDirectSound3DBufferImpl_Release (int ) ;
 int S_OK ;
 int TRACE (char*,int *) ;

HRESULT IDirectSound3DBufferImpl_Destroy(
    IDirectSound3DBufferImpl *pds3db)
{
    TRACE("(%p)\n",pds3db);

    while (IDirectSound3DBufferImpl_Release((LPDIRECTSOUND3DBUFFER)pds3db) > 0);

    return S_OK;
}
