
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int IWebBrowserPriv2IE9_iface; int ITargetFramePriv2_iface; int ITargetFrame2_iface; int ITargetFrame_iface; int IHlinkFrame_iface; } ;
typedef int REFIID ;
typedef int IUnknown ;
typedef TYPE_1__ HlinkFrame ;
typedef int BOOL ;


 int FALSE ;
 int IID_IHlinkFrame ;
 int IID_ITargetFrame ;
 int IID_ITargetFrame2 ;
 int IID_ITargetFramePriv ;
 int IID_ITargetFramePriv2 ;
 int IID_IWebBrowserPriv2IE9 ;
 int IUnknown_AddRef (int *) ;
 scalar_t__ IsEqualGUID (int *,int ) ;
 int TRACE (char*,TYPE_1__*,void**) ;
 int TRUE ;

BOOL HlinkFrame_QI(HlinkFrame *This, REFIID riid, void **ppv)
{
    if(IsEqualGUID(&IID_IHlinkFrame, riid)) {
        TRACE("(%p)->(IID_IHlinkFrame %p)\n", This, ppv);
        *ppv = &This->IHlinkFrame_iface;
    }else if(IsEqualGUID(&IID_ITargetFrame, riid)) {
        TRACE("(%p)->(IID_ITargetFrame %p)\n", This, ppv);
        *ppv = &This->ITargetFrame_iface;
    }else if(IsEqualGUID(&IID_ITargetFrame2, riid)) {
        TRACE("(%p)->(IID_ITargetFrame2 %p)\n", This, ppv);
        *ppv = &This->ITargetFrame2_iface;
    }else if(IsEqualGUID(&IID_ITargetFramePriv, riid)) {
        TRACE("(%p)->(IID_ITargetFramePriv %p)\n", This, ppv);
        *ppv = &This->ITargetFramePriv2_iface;
    }else if(IsEqualGUID(&IID_ITargetFramePriv2, riid)) {
        TRACE("(%p)->(IID_ITargetFramePriv2 %p)\n", This, ppv);
        *ppv = &This->ITargetFramePriv2_iface;
    }else if(IsEqualGUID(&IID_IWebBrowserPriv2IE9, riid)) {
        TRACE("(%p)->(IID_IWebBrowserPriv2IE9 %p)\n", This, ppv);
        *ppv = &This->IWebBrowserPriv2IE9_iface;
    }else {
        return FALSE;
    }

    IUnknown_AddRef((IUnknown*)*ppv);
    return TRUE;
}
