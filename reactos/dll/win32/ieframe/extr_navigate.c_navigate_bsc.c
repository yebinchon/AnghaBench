
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef void* VARIANT_BOOL ;
struct TYPE_18__ {int IBindStatusCallback_iface; int url; int headers; int post_data_len; scalar_t__ post_data; } ;
struct TYPE_17__ {scalar_t__ frame; scalar_t__ document; void* busy; } ;
struct TYPE_16__ {int pvData; } ;
typedef TYPE_1__ SAFEARRAY ;
typedef int IMoniker ;
typedef int IBindCtx ;
typedef int HRESULT ;
typedef TYPE_2__ DocHost ;
typedef TYPE_3__ BindStatusCallback ;


 int CSC_NAVIGATEBACK ;
 int CSC_NAVIGATEFORWARD ;
 int CreateAsyncBindCtx (int ,int *,int ,int **) ;
 int FALSE ;
 int FIXME (char*) ;
 int IBindCtx_Release (int *) ;
 int IOleInPlaceFrame_EnableModeless (scalar_t__,int ) ;
 int READYSTATE_LOADING ;
 int S_OK ;
 TYPE_1__* SafeArrayCreateVector (int ,int ,int ) ;
 int SafeArrayDestroy (TYPE_1__*) ;
 int TRUE ;
 void* VARIANT_FALSE ;
 int VT_UI1 ;
 int bind_to_object (TYPE_2__*,int *,int ,int *,int *) ;
 int deactivate_document (TYPE_2__*) ;
 int memcpy (int ,TYPE_1__*,int ) ;
 int notify_download_state (TYPE_2__*,int ) ;
 int on_before_navigate2 (TYPE_2__*,int ,TYPE_1__*,int ,void**) ;
 int on_commandstate_change (TYPE_2__*,int ,int ) ;
 int set_doc_state (TYPE_2__*,int ) ;

__attribute__((used)) static HRESULT navigate_bsc(DocHost *This, BindStatusCallback *bsc, IMoniker *mon)
{
    VARIANT_BOOL cancel = VARIANT_FALSE;
    SAFEARRAY *post_data = ((void*)0);
    IBindCtx *bindctx;
    HRESULT hres;

    set_doc_state(This, READYSTATE_LOADING);

    if(bsc->post_data) {
        post_data = SafeArrayCreateVector(VT_UI1, 0, bsc->post_data_len);
        memcpy(post_data->pvData, post_data, bsc->post_data_len);
    }

    on_before_navigate2(This, bsc->url, post_data, bsc->headers, &cancel);
    if(post_data)
        SafeArrayDestroy(post_data);
    if(cancel) {
        FIXME("Navigation canceled\n");
        return S_OK;
    }

    notify_download_state(This, TRUE);
    This->busy = VARIANT_FALSE;

    on_commandstate_change(This, CSC_NAVIGATEBACK, FALSE);
    on_commandstate_change(This, CSC_NAVIGATEFORWARD, FALSE);

    if(This->document)
        deactivate_document(This);

    CreateAsyncBindCtx(0, &bsc->IBindStatusCallback_iface, 0, &bindctx);

    if(This->frame)
        IOleInPlaceFrame_EnableModeless(This->frame, FALSE);

    hres = bind_to_object(This, mon, bsc->url, bindctx, &bsc->IBindStatusCallback_iface);

    if(This->frame)
        IOleInPlaceFrame_EnableModeless(This->frame, TRUE);

    IBindCtx_Release(bindctx);

    return hres;
}
