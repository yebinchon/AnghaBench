
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPDIRECTSOUNDNOTIFY ;
typedef int IDirectSoundNotifyImpl ;
typedef int HRESULT ;


 int DS_OK ;
 scalar_t__ IDirectSoundNotifyImpl_Release (int ) ;
 int TRACE (char*,int *) ;

__attribute__((used)) static HRESULT IDirectSoundNotifyImpl_Destroy(
    IDirectSoundNotifyImpl *pdsn)
{
    TRACE("(%p)\n",pdsn);

    while (IDirectSoundNotifyImpl_Release((LPDIRECTSOUNDNOTIFY)pdsn) > 0);

    return DS_OK;
}
