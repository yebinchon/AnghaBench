
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {TYPE_3__ IMoniker_iface; int * name; int has_class; scalar_t__ ref; } ;
typedef TYPE_1__ MediaCatMoniker ;


 TYPE_1__* CoTaskMemAlloc (int) ;
 int DEVENUM_IMediaCatMoniker_AddRef (TYPE_3__*) ;
 int DEVENUM_LockModule () ;
 int FALSE ;
 int IMoniker_Vtbl ;

MediaCatMoniker * DEVENUM_IMediaCatMoniker_Construct(void)
{
    MediaCatMoniker * pMoniker = ((void*)0);
    pMoniker = CoTaskMemAlloc(sizeof(MediaCatMoniker));
    if (!pMoniker)
        return ((void*)0);

    pMoniker->IMoniker_iface.lpVtbl = &IMoniker_Vtbl;
    pMoniker->ref = 0;
    pMoniker->has_class = FALSE;
    pMoniker->name = ((void*)0);

    DEVENUM_IMediaCatMoniker_AddRef(&pMoniker->IMoniker_iface);

    DEVENUM_LockModule();

    return pMoniker;
}
