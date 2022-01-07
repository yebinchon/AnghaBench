
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int DWORD ;
typedef int DRS_MSG_REPDEL ;
typedef int DRS_HANDLE ;


 int STATUS_NOT_IMPLEMENTED ;

ULONG SRV_IDL_DRSReplicaDelNotImplemented(DRS_HANDLE hDrs, DWORD dwVersion, DRS_MSG_REPDEL *pmsgDel)
{
 return STATUS_NOT_IMPLEMENTED;
}
