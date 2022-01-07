
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ cbBodyEnd; scalar_t__ cbBodyStart; scalar_t__ cbHeaderStart; scalar_t__ cbBoundaryStart; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_9__ {int ref; int data_iid; int * data; int encoding; int * content_sub_type; int * content_pri_type; int next_prop_id; int new_props; int headers; int * handle; TYPE_1__ IMimeBody_iface; } ;
typedef TYPE_2__ MimeBody ;
typedef TYPE_3__ BODYOFFSETS ;


 int FIRST_CUSTOM_PROP_ID ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int IET_7BIT ;
 int IID_NULL ;
 int MimeBody_set_offsets (TYPE_2__*,TYPE_3__*) ;
 int body_vtbl ;
 int list_init (int *) ;

__attribute__((used)) static MimeBody *mimebody_create(void)
{
    MimeBody *This;
    BODYOFFSETS body_offsets;

    This = HeapAlloc(GetProcessHeap(), 0, sizeof(*This));
    if (!This)
        return ((void*)0);

    This->IMimeBody_iface.lpVtbl = &body_vtbl;
    This->ref = 1;
    This->handle = ((void*)0);
    list_init(&This->headers);
    list_init(&This->new_props);
    This->next_prop_id = FIRST_CUSTOM_PROP_ID;
    This->content_pri_type = ((void*)0);
    This->content_sub_type = ((void*)0);
    This->encoding = IET_7BIT;
    This->data = ((void*)0);
    This->data_iid = IID_NULL;

    body_offsets.cbBoundaryStart = body_offsets.cbHeaderStart = 0;
    body_offsets.cbBodyStart = body_offsets.cbBodyEnd = 0;
    MimeBody_set_offsets(This, &body_offsets);

    return This;
}
