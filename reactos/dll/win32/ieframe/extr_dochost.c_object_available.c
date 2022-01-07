
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwnd; int IOleClientSite_iface; int document; } ;
typedef int RECT ;
typedef int IOleObject ;
typedef int IHlinkTarget ;
typedef int HRESULT ;
typedef TYPE_1__ DocHost ;


 scalar_t__ FAILED (int ) ;
 int FIXME (char*,...) ;
 int GetClientRect (int ,int *) ;
 int IHlinkTarget_Navigate (int *,int ,int *) ;
 int IHlinkTarget_Release (int *) ;
 int IID_IHlinkTarget ;
 int IID_IOleObject ;
 int IOleObject_DoVerb (int *,int ,int *,int *,int,int ,int *) ;
 int IOleObject_Release (int *) ;
 int IUnknown_QueryInterface (int ,int *,void**) ;
 int OLEIVERB_SHOW ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,...) ;
 int WARN (char*) ;

__attribute__((used)) static void object_available(DocHost *This)
{
    IHlinkTarget *hlink;
    HRESULT hres;

    TRACE("(%p)\n", This);

    if(!This->document) {
        WARN("document == NULL\n");
        return;
    }

    hres = IUnknown_QueryInterface(This->document, &IID_IHlinkTarget, (void**)&hlink);
    if(SUCCEEDED(hres)) {
        hres = IHlinkTarget_Navigate(hlink, 0, ((void*)0));
        IHlinkTarget_Release(hlink);
        if(FAILED(hres))
            FIXME("Navigate failed\n");
    }else {
        IOleObject *ole_object;
        RECT rect;

        TRACE("No IHlink iface\n");

        hres = IUnknown_QueryInterface(This->document, &IID_IOleObject, (void**)&ole_object);
        if(FAILED(hres)) {
            FIXME("Could not get IOleObject iface: %08x\n", hres);
            return;
        }

        GetClientRect(This->hwnd, &rect);
        hres = IOleObject_DoVerb(ole_object, OLEIVERB_SHOW, ((void*)0), &This->IOleClientSite_iface, -1, This->hwnd, &rect);
        IOleObject_Release(ole_object);
        if(FAILED(hres))
            FIXME("DoVerb failed: %08x\n", hres);
    }
}
