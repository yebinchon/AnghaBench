
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_1__ IDirectMusicDownload_iface; } ;
typedef int IUnknown ;
typedef TYPE_2__ IDirectMusicDownloadImpl ;
typedef int HRESULT ;
typedef int GUID ;


 int DMUSIC_LockModule () ;
 int DirectMusicDownload_Vtbl ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int S_OK ;

HRESULT DMUSIC_CreateDirectMusicDownloadImpl(const GUID *guid, void **ret_iface, IUnknown *unk_outer)
{
    IDirectMusicDownloadImpl *download;

    download = HeapAlloc(GetProcessHeap(), 0, sizeof(*download));
    if (!download)
    {
        *ret_iface = ((void*)0);
        return E_OUTOFMEMORY;
    }

    download->IDirectMusicDownload_iface.lpVtbl = &DirectMusicDownload_Vtbl;
    download->ref = 1;
    *ret_iface = download;

    DMUSIC_LockModule();
    return S_OK;
}
