
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lpVtbl; } ;
struct ddraw_clipper {int ref; TYPE_1__ IDirectDrawClipper_iface; } ;
typedef int HRESULT ;


 int DD_OK ;
 int ddraw_clipper_vtbl ;

HRESULT ddraw_clipper_init(struct ddraw_clipper *clipper)
{
    clipper->IDirectDrawClipper_iface.lpVtbl = &ddraw_clipper_vtbl;
    clipper->ref = 1;

    return DD_OK;
}
