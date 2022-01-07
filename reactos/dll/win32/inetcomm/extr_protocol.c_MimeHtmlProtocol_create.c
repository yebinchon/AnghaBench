
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_9__ {int ref; TYPE_4__ IUnknown_inner; int * sink; int * stream; int * location; TYPE_4__* outer_unk; TYPE_2__ IInternetProtocolInfo_iface; TYPE_1__ IInternetProtocol_iface; } ;
typedef TYPE_3__ MimeHtmlProtocol ;
typedef TYPE_4__ IUnknown ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int MimeHtmlProtocolInfoVtbl ;
 int MimeHtmlProtocolInnerVtbl ;
 int MimeHtmlProtocolVtbl ;
 int S_OK ;
 TYPE_3__* heap_alloc (int) ;

HRESULT MimeHtmlProtocol_create(IUnknown *outer, void **obj)
{
    MimeHtmlProtocol *protocol;

    protocol = heap_alloc(sizeof(*protocol));
    if(!protocol)
        return E_OUTOFMEMORY;

    protocol->IUnknown_inner.lpVtbl = &MimeHtmlProtocolInnerVtbl;
    protocol->IInternetProtocol_iface.lpVtbl = &MimeHtmlProtocolVtbl;
    protocol->IInternetProtocolInfo_iface.lpVtbl = &MimeHtmlProtocolInfoVtbl;
    protocol->ref = 1;
    protocol->outer_unk = outer ? outer : &protocol->IUnknown_inner;
    protocol->location = ((void*)0);
    protocol->stream = ((void*)0);
    protocol->sink = ((void*)0);

    *obj = &protocol->IUnknown_inner;
    return S_OK;
}
