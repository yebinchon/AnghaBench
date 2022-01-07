
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hCard; void* descr; int suppdata; void* withoutCard; } ;
typedef int SCARDCONTEXT ;
typedef TYPE_1__* PKULL_M_ACR_COMM ;
typedef int LPVOID ;
typedef int LPCWSTR ;
typedef scalar_t__ LONG ;
typedef int DWORD ;
typedef void* BOOL ;


 void* FALSE ;
 int PRINT_ERROR (char*,scalar_t__) ;
 int SCARD_PROTOCOL_Tx ;
 int SCARD_PROTOCOL_UNDEFINED ;
 int SCARD_SHARE_DIRECT ;
 int SCARD_SHARE_SHARED ;
 scalar_t__ SCARD_S_SUCCESS ;
 scalar_t__ SCardConnect (int ,int ,int ,int ,scalar_t__*,int *) ;

BOOL kull_m_acr_init(SCARDCONTEXT hContext, LPCWSTR szReaderName, BOOL withoutCard, LPVOID suppdata, BOOL descr, PKULL_M_ACR_COMM comm)
{
 BOOL status = FALSE;
 DWORD dwActiveProtocol;
 LONG scStatus;
 comm->hCard = 0;
 comm->withoutCard = withoutCard;
 comm->suppdata = suppdata;
 comm->descr = descr;
 scStatus = SCardConnect(hContext, szReaderName, withoutCard ? SCARD_SHARE_DIRECT : SCARD_SHARE_SHARED, withoutCard ? SCARD_PROTOCOL_UNDEFINED : SCARD_PROTOCOL_Tx, &comm->hCard, &dwActiveProtocol);
 if(!(status = (scStatus == SCARD_S_SUCCESS)))
  PRINT_ERROR(L"SCardConnect: 0x%08x\n", scStatus);
 return status;
}
