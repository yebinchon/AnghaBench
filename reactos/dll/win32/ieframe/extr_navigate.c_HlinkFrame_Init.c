
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_12__ {int * lpVtbl; } ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_13__ {int * doc_host; int * outer; TYPE_2__ IWebBrowserPriv2IE9_iface; TYPE_1__ ITargetFramePriv2_iface; TYPE_5__ ITargetFrame2_iface; TYPE_4__ ITargetFrame_iface; TYPE_3__ IHlinkFrame_iface; } ;
typedef int IUnknown ;
typedef TYPE_6__ HlinkFrame ;
typedef int DocHost ;


 int HlinkFrameVtbl ;
 int TargetFrame2Vtbl ;
 int TargetFramePriv2Vtbl ;
 int TargetFrameVtbl ;
 int WebBrowserPriv2IE9Vtbl ;

void HlinkFrame_Init(HlinkFrame *This, IUnknown *outer, DocHost *doc_host)
{
    This->IHlinkFrame_iface.lpVtbl = &HlinkFrameVtbl;
    This->ITargetFrame_iface.lpVtbl = &TargetFrameVtbl;
    This->ITargetFrame2_iface.lpVtbl = &TargetFrame2Vtbl;
    This->ITargetFramePriv2_iface.lpVtbl = &TargetFramePriv2Vtbl;
    This->IWebBrowserPriv2IE9_iface.lpVtbl = &WebBrowserPriv2IE9Vtbl;

    This->outer = outer;
    This->doc_host = doc_host;
}
