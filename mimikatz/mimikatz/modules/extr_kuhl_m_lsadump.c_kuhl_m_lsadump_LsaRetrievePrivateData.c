
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int MaximumLength; void* Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
struct TYPE_15__ {int member_0; } ;
typedef void* PWSTR ;
typedef TYPE_1__* PUNICODE_STRING ;
typedef int PCWSTR ;
typedef int NTSTATUS ;
typedef TYPE_3__ LSA_OBJECT_ATTRIBUTES ;
typedef int LSA_HANDLE ;
typedef int LARGE_INTEGER ;
typedef int BOOL ;


 int LPTR ;
 scalar_t__ LocalAlloc (int ,int ) ;
 int LsaClose (int ) ;
 int LsaFreeMemory (TYPE_1__*) ;
 int LsaOpenPolicy (TYPE_1__*,TYPE_3__*,int ,int *) ;
 int LsaOpenSecret (int ,TYPE_1__*,int ,int *) ;
 int LsaQuerySecret (int ,TYPE_1__**,int *,TYPE_1__**,int *) ;
 int LsaRetrievePrivateData (int ,TYPE_1__*,TYPE_1__**) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int POLICY_GET_PRIVATE_INFORMATION ;
 int RtlCopyMemory (void*,void*,int ) ;
 int RtlInitUnicodeString (TYPE_1__*,int ) ;
 int SECRET_QUERY_VALUE ;
 int STATUS_UNSUCCESSFUL ;

NTSTATUS kuhl_m_lsadump_LsaRetrievePrivateData(PCWSTR systemName, PCWSTR secretName, PUNICODE_STRING secret, BOOL isSecret)
{
 NTSTATUS status = STATUS_UNSUCCESSFUL;
 LSA_OBJECT_ATTRIBUTES oa = {0};
 LSA_HANDLE hPolicy, hSecret;
 UNICODE_STRING name, system, *cur, *old;
 LARGE_INTEGER curDate, oldDate;

 if(secretName)
 {
  RtlInitUnicodeString(&name, secretName);
  RtlInitUnicodeString(&system, systemName);
  status = LsaOpenPolicy(&system, &oa, POLICY_GET_PRIVATE_INFORMATION, &hPolicy);
  if(NT_SUCCESS(status))
  {
   if(!isSecret)
   {
    status = LsaRetrievePrivateData(hPolicy, &name, &cur);
    if(NT_SUCCESS(status))
    {
     if(cur)
     {
      *secret = *cur;
      if(secret->Buffer = (PWSTR) LocalAlloc(LPTR, secret->MaximumLength))
       RtlCopyMemory(secret->Buffer, cur->Buffer, secret->MaximumLength);
      LsaFreeMemory(cur);
     }
    }
   }
   else
   {
    status = LsaOpenSecret(hPolicy, &name, SECRET_QUERY_VALUE, &hSecret);
    if(NT_SUCCESS(status))
    {
     status = LsaQuerySecret(hSecret, &cur, &curDate, &old, &oldDate);
     if(NT_SUCCESS(status))
     {
      if(cur)
      {
       *secret = *cur;
       if(secret->Buffer = (PWSTR) LocalAlloc(LPTR, secret->MaximumLength))
        RtlCopyMemory(secret->Buffer, cur->Buffer, secret->MaximumLength);
       LsaFreeMemory(cur);
      }
      if(old)
       LsaFreeMemory(old);
     }
     LsaClose(hSecret);
    }
   }
   LsaClose(hPolicy);
  }
 }
 return status;
}
