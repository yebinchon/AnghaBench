
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_7__ {TYPE_2__ IDataObject_iface; TYPE_1__ IViewObject2_iface; } ;
typedef TYPE_3__ WebBrowser ;


 int DataObjectVtbl ;
 int ViewObjectVtbl ;

void WebBrowser_ViewObject_Init(WebBrowser *This)
{
    This->IViewObject2_iface.lpVtbl = &ViewObjectVtbl;
    This->IDataObject_iface.lpVtbl = &DataObjectVtbl;
}
