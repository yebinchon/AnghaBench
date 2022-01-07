
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int DWORD ;
typedef int DRS_MSG_DCINFOREQ ;
typedef int DRS_MSG_DCINFOREPLY ;
typedef int DRS_HANDLE ;


 int STATUS_NOT_IMPLEMENTED ;

ULONG SRV_IDL_DRSDomainControllerInfoNotImplemented(DRS_HANDLE hDrs, DWORD dwInVersion, DRS_MSG_DCINFOREQ *pmsgIn, DWORD *pdwOutVersion, DRS_MSG_DCINFOREPLY *pmsgOut)
{
 return STATUS_NOT_IMPLEMENTED;
}
