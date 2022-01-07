
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sink_cookie; scalar_t__ sink_dispatch; int sink_id; int v; } ;
typedef TYPE_1__ php_com_dotnet_object ;
typedef int IUnknown ;
typedef int IConnectionPointContainer ;
typedef int IConnectionPoint ;


 int IConnectionPointContainer_FindConnectionPoint (int *,int *,int **) ;
 int IConnectionPointContainer_Release (int *) ;
 int IConnectionPoint_Advise (int *,int *,int *) ;
 int IConnectionPoint_Release (int *) ;
 int IConnectionPoint_Unadvise (int *,int ) ;
 int IDispatch_QueryInterface (int ,int *,void**) ;
 int IID_IConnectionPointContainer ;
 scalar_t__ SUCCEEDED (int ) ;
 int V_DISPATCH (int *) ;

void php_com_object_enable_event_sink(php_com_dotnet_object *obj, int enable)
{
 if (obj->sink_dispatch) {
  IConnectionPointContainer *cont;
  IConnectionPoint *point;

  if (SUCCEEDED(IDispatch_QueryInterface(V_DISPATCH(&obj->v),
    &IID_IConnectionPointContainer, (void**)&cont))) {

   if (SUCCEEDED(IConnectionPointContainer_FindConnectionPoint(cont,
     &obj->sink_id, &point))) {

    if (enable) {
     IConnectionPoint_Advise(point, (IUnknown*)obj->sink_dispatch, &obj->sink_cookie);
    } else {
     IConnectionPoint_Unadvise(point, obj->sink_cookie);
    }
    IConnectionPoint_Release(point);
   }
   IConnectionPointContainer_Release(cont);
  }
 }
}
