
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
typedef int IDirectMusicDownloadedInstrumentImpl ;
typedef TYPE_1__ IDirectMusicDownloadedInstrument ;


 int DirectMusicDownloadedInstrument_Vtbl ;
 int assert (int) ;
 int * impl_from_IDirectMusicDownloadedInstrument (TYPE_1__*) ;

__attribute__((used)) static inline IDirectMusicDownloadedInstrumentImpl* unsafe_impl_from_IDirectMusicDownloadedInstrument(IDirectMusicDownloadedInstrument *iface)
{
    if (!iface)
        return ((void*)0);
    assert(iface->lpVtbl == &DirectMusicDownloadedInstrument_Vtbl);

    return impl_from_IDirectMusicDownloadedInstrument(iface);
}
