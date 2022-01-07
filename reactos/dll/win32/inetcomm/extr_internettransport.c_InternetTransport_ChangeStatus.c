
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vtbl; } ;
struct TYPE_5__ {TYPE_1__ u; scalar_t__ pCallback; int Status; } ;
typedef TYPE_2__ InternetTransport ;
typedef int IXPSTATUS ;
typedef int IInternetTransport ;
typedef int HRESULT ;


 int ITransportCallback_OnStatus (scalar_t__,int ,int *) ;
 int S_OK ;

HRESULT InternetTransport_ChangeStatus(InternetTransport *This, IXPSTATUS Status)
{
    This->Status = Status;
    if (This->pCallback)
        ITransportCallback_OnStatus(This->pCallback, Status,
            (IInternetTransport *)&This->u.vtbl);
    return S_OK;
}
