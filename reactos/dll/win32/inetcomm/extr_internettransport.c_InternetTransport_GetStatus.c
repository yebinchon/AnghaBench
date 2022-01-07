
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Status; } ;
typedef TYPE_1__ InternetTransport ;
typedef int IXPSTATUS ;
typedef int HRESULT ;


 int S_OK ;

HRESULT InternetTransport_GetStatus(InternetTransport *This,
    IXPSTATUS *pCurrentStatus)
{
    *pCurrentStatus = This->Status;
    return S_OK;
}
