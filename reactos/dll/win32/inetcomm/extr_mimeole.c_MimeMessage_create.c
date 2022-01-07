
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int entry; } ;
typedef TYPE_2__ body_t ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_8__ {int ref; int next_index; TYPE_1__ IMimeMessage_iface; int body_tree; int * stream; } ;
typedef TYPE_3__ MimeMessage ;
typedef int MimeBody ;
typedef int IUnknown ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 int E_OUTOFMEMORY ;
 int FIXME (char*) ;
 int GetProcessHeap () ;
 TYPE_3__* HeapAlloc (int ,int ,int) ;
 int MimeMessageVtbl ;
 int S_OK ;
 int TRACE (char*,int *,void**) ;
 int list_add_head (int *,int *) ;
 int list_init (int *) ;
 int * mimebody_create () ;
 TYPE_2__* new_body_entry (int *,int ,int *) ;

HRESULT MimeMessage_create(IUnknown *outer, void **obj)
{
    MimeMessage *This;
    MimeBody *mime_body;
    body_t *root_body;

    TRACE("(%p, %p)\n", outer, obj);

    if (outer)
    {
        FIXME("outer unknown not supported yet\n");
        return E_NOTIMPL;
    }

    *obj = ((void*)0);

    This = HeapAlloc(GetProcessHeap(), 0, sizeof(*This));
    if (!This) return E_OUTOFMEMORY;

    This->IMimeMessage_iface.lpVtbl = &MimeMessageVtbl;
    This->ref = 1;
    This->stream = ((void*)0);
    list_init(&This->body_tree);
    This->next_index = 1;

    mime_body = mimebody_create();
    root_body = new_body_entry(mime_body, This->next_index++, ((void*)0));
    list_add_head(&This->body_tree, &root_body->entry);

    *obj = &This->IMimeMessage_iface;
    return S_OK;
}
