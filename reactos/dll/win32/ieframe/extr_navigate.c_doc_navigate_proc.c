
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int task_header_t ;
struct TYPE_6__ {int post_data; int headers; int url; scalar_t__ async_notif; } ;
typedef TYPE_1__ task_doc_navigate_t ;
typedef scalar_t__ VARIANT_BOOL ;
struct TYPE_7__ {int doc_navigate; } ;
typedef int IHTMLPrivateWindow ;
typedef int HRESULT ;
typedef TYPE_2__ DocHost ;


 int ERR (char*) ;
 int IHTMLPrivateWindow_Release (int *) ;
 int IID_IHTMLPrivateWindow ;
 int IUnknown_QueryInterface (int ,int *,void**) ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*) ;
 scalar_t__ VARIANT_FALSE ;
 int WARN (char*,int ) ;
 int html_window_navigate (TYPE_2__*,int *,int ,int ,int ) ;
 int on_before_navigate2 (TYPE_2__*,int ,int ,int ,scalar_t__*) ;

__attribute__((used)) static void doc_navigate_proc(DocHost *This, task_header_t *t)
{
    task_doc_navigate_t *task = (task_doc_navigate_t*)t;
    IHTMLPrivateWindow *priv_window;
    HRESULT hres;

    if(!This->doc_navigate) {
        ERR("Skip nav\n");
        return;
    }

    if(task->async_notif) {
        VARIANT_BOOL cancel = VARIANT_FALSE;
        on_before_navigate2(This, task->url, task->post_data, task->headers, &cancel);
        if(cancel) {
            TRACE("Navigation canceled\n");
            return;
        }
    }

    hres = IUnknown_QueryInterface(This->doc_navigate, &IID_IHTMLPrivateWindow, (void**)&priv_window);
    if(SUCCEEDED(hres)) {
        html_window_navigate(This, priv_window, task->url, task->headers, task->post_data);
        IHTMLPrivateWindow_Release(priv_window);
    }else {
        WARN("Could not get IHTMLPrivateWindow iface: %08x\n", hres);
    }
}
