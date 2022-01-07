
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int task_header_t ;
struct TYPE_7__ {scalar_t__ doc_navigate; int IOleClientSite_iface; int * document; } ;
typedef scalar_t__ READYSTATE ;
typedef int IUnknown ;
typedef int IOleObject ;
typedef int HRESULT ;
typedef TYPE_1__ DocHost ;
typedef int CLSID ;


 int CLSID_HTMLDocument ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int FIXME (char*,int ) ;
 int IID_IOleObject ;
 int IOleObject_GetUserClassID (int *,int *) ;
 int IOleObject_Release (int *) ;
 int IOleObject_SetClientSite (int *,int *) ;
 int IUnknown_AddRef (int *) ;
 int IUnknown_QueryInterface (int *,int *,void**) ;
 scalar_t__ IsEqualGUID (int *,int *) ;
 scalar_t__ READYSTATE_COMPLETE ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*,char*) ;
 int TRUE ;
 int advise_prop_notif (TYPE_1__*,int ) ;
 char* debugstr_guid (int *) ;
 int get_doc_ready_state (TYPE_1__*,scalar_t__*) ;
 int * heap_alloc (int) ;
 int object_available_proc ;
 int object_available_task_destr ;
 int push_dochost_task (TYPE_1__*,int *,int ,int ,int ) ;
 int push_ready_state_task (TYPE_1__*,scalar_t__) ;

HRESULT dochost_object_available(DocHost *This, IUnknown *doc)
{
    READYSTATE ready_state;
    task_header_t *task;
    IOleObject *oleobj;
    HRESULT hres;

    IUnknown_AddRef(doc);
    This->document = doc;

    hres = IUnknown_QueryInterface(doc, &IID_IOleObject, (void**)&oleobj);
    if(SUCCEEDED(hres)) {
        CLSID clsid;

        hres = IOleObject_GetUserClassID(oleobj, &clsid);
        if(SUCCEEDED(hres))
            TRACE("Got clsid %s\n",
                  IsEqualGUID(&clsid, &CLSID_HTMLDocument) ? "CLSID_HTMLDocument" : debugstr_guid(&clsid));

        hres = IOleObject_SetClientSite(oleobj, &This->IOleClientSite_iface);
        if(FAILED(hres))
            FIXME("SetClientSite failed: %08x\n", hres);

        IOleObject_Release(oleobj);
    }else {
        FIXME("Could not get IOleObject iface: %08x\n", hres);
    }



    task = heap_alloc(sizeof(*task));
    push_dochost_task(This, task, object_available_proc, object_available_task_destr, FALSE);

    hres = get_doc_ready_state(This, &ready_state);
    if(SUCCEEDED(hres)) {
        if(ready_state == READYSTATE_COMPLETE)
            push_ready_state_task(This, READYSTATE_COMPLETE);
        if(ready_state != READYSTATE_COMPLETE || This->doc_navigate)
            advise_prop_notif(This, TRUE);
    }else if(!This->doc_navigate) {


        push_ready_state_task(This, READYSTATE_COMPLETE);
    }

    return S_OK;
}
