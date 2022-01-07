
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int DWORD ;
typedef int DRS_MSG_CRACKREQ ;
typedef int DRS_MSG_CRACKREPLY ;
typedef int DRS_HANDLE ;


 int STATUS_NOT_IMPLEMENTED ;

ULONG SRV_IDL_DRSCrackNamesNotImplemented(DRS_HANDLE hDrs, DWORD dwInVersion, DRS_MSG_CRACKREQ *pmsgIn, DWORD *pdwOutVersion, DRS_MSG_CRACKREPLY *pmsgOut)
{
 return STATUS_NOT_IMPLEMENTED;
}
