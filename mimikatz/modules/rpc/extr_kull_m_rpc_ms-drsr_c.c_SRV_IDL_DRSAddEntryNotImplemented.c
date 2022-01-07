
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int DWORD ;
typedef int DRS_MSG_ADDENTRYREQ ;
typedef int DRS_MSG_ADDENTRYREPLY ;
typedef int DRS_HANDLE ;


 int STATUS_NOT_IMPLEMENTED ;

ULONG SRV_IDL_DRSAddEntryNotImplemented(DRS_HANDLE hDrs, DWORD dwInVersion, DRS_MSG_ADDENTRYREQ *pmsgIn, DWORD *pdwOutVersion, DRS_MSG_ADDENTRYREPLY *pmsgOut)
{
 return STATUS_NOT_IMPLEMENTED;
}
