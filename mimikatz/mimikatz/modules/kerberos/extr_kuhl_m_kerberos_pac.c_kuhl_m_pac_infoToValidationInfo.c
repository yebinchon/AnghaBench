
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {int RelativeId; } ;
struct TYPE_5__ {int UserAccountControl; int UserFlags; void* SidCount; scalar_t__ ExtraSids; int LogonDomainId; int LogonDomainName; TYPE_2__* GroupIds; void* GroupCount; int PrimaryGroupId; int UserId; int EffectiveName; int PasswordMustChange; int PasswordCanChange; int PasswordLastSet; int KickOffTime; int LogoffTime; int LogonTime; } ;
typedef TYPE_1__* PKERB_VALIDATION_INFO ;
typedef scalar_t__ PKERB_SID_AND_ATTRIBUTES ;
typedef int PISID ;
typedef TYPE_2__* PGROUP_MEMBERSHIP ;
typedef int * PFILETIME ;
typedef int LPCWSTR ;
typedef int KERB_VALIDATION_INFO ;
typedef void* DWORD ;


 int KIWI_NEVERTIME (int *) ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int RtlInitUnicodeString (int *,int ) ;
 int USER_DONT_EXPIRE_PASSWORD ;
 int USER_NORMAL_ACCOUNT ;

PKERB_VALIDATION_INFO kuhl_m_pac_infoToValidationInfo(PFILETIME authtime, LPCWSTR username, LPCWSTR domainname, LPCWSTR LogonDomainName, PISID sid, ULONG rid, PGROUP_MEMBERSHIP groups, DWORD cbGroups, PKERB_SID_AND_ATTRIBUTES sids, DWORD cbSids)
{
 PKERB_VALIDATION_INFO validationInfo = ((void*)0);
 if(validationInfo = (PKERB_VALIDATION_INFO) LocalAlloc(LPTR, sizeof(KERB_VALIDATION_INFO)))
 {
  validationInfo->LogonTime = *authtime;
  KIWI_NEVERTIME(&validationInfo->LogoffTime);
  KIWI_NEVERTIME(&validationInfo->KickOffTime);
  KIWI_NEVERTIME(&validationInfo->PasswordLastSet);
  KIWI_NEVERTIME(&validationInfo->PasswordCanChange);
  KIWI_NEVERTIME(&validationInfo->PasswordMustChange);
  RtlInitUnicodeString(&validationInfo->EffectiveName, username);
  validationInfo->UserId = rid;
  validationInfo->PrimaryGroupId = groups[0].RelativeId;
  validationInfo->GroupCount = cbGroups;
  validationInfo->GroupIds = groups;
  if(LogonDomainName)
   RtlInitUnicodeString(&validationInfo->LogonDomainName, LogonDomainName);
  validationInfo->LogonDomainId = sid;
  validationInfo->UserAccountControl = USER_DONT_EXPIRE_PASSWORD | USER_NORMAL_ACCOUNT;
  validationInfo->SidCount = cbSids;
  validationInfo->ExtraSids = sids;



  if(validationInfo->ExtraSids && validationInfo->SidCount)
   validationInfo->UserFlags |= 0x20;


 }
 return validationInfo;
}
