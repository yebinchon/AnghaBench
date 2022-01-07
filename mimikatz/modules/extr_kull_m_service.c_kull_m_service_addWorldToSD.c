
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ptstrName; } ;
struct TYPE_5__ {int * member_4; int member_3; int member_2; int member_1; int * member_0; } ;
struct TYPE_7__ {int member_0; TYPE_2__ Trustee; TYPE_1__ member_3; int member_2; int member_1; } ;
typedef int SID_IDENTIFIER_AUTHORITY ;
typedef int SECURITY_DESCRIPTOR ;
typedef int SC_HANDLE ;
typedef int PSID ;
typedef int * PSECURITY_DESCRIPTOR ;
typedef TYPE_3__ EXPLICIT_ACCESS ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ AllocateAndInitializeSid (int *,int,int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 scalar_t__ BuildSecurityDescriptor (int *,int *,int,TYPE_3__*,int ,int *,int *,int *,int **) ;
 int DACL_SECURITY_INFORMATION ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int FreeSid (int ) ;
 scalar_t__ GetLastError () ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int ) ;
 int LocalFree (int *) ;
 int NO_INHERITANCE ;
 int NO_MULTIPLE_TRUSTEE ;
 scalar_t__ QueryServiceObjectSecurity (int ,int ,int *,int ,int *) ;
 int READ_CONTROL ;
 int SECURITY_WORLD_RID ;
 int SECURITY_WORLD_SID_AUTHORITY ;
 int SERVICE_ENUMERATE_DEPENDENTS ;
 int SERVICE_INTERROGATE ;
 int SERVICE_PAUSE_CONTINUE ;
 int SERVICE_QUERY_CONFIG ;
 int SERVICE_QUERY_STATUS ;
 int SERVICE_START ;
 int SERVICE_STOP ;
 int SERVICE_USER_DEFINED_CONTROL ;
 int SET_ACCESS ;
 int SetServiceObjectSecurity (int ,int ,int *) ;
 int TRUSTEE_IS_SID ;
 int TRUSTEE_IS_WELL_KNOWN_GROUP ;

BOOL kull_m_service_addWorldToSD(SC_HANDLE monHandle)
{
 BOOL status = FALSE;
 DWORD dwSizeNeeded;
 PSECURITY_DESCRIPTOR oldSd, newSd;
 SECURITY_DESCRIPTOR dummySdForXP;
 SID_IDENTIFIER_AUTHORITY SIDAuthWorld = SECURITY_WORLD_SID_AUTHORITY;
 EXPLICIT_ACCESS ForEveryOne = {
  SERVICE_QUERY_STATUS | SERVICE_QUERY_CONFIG | SERVICE_INTERROGATE | SERVICE_ENUMERATE_DEPENDENTS | SERVICE_PAUSE_CONTINUE | SERVICE_START | SERVICE_STOP | SERVICE_USER_DEFINED_CONTROL | READ_CONTROL,
  SET_ACCESS,
  NO_INHERITANCE,
  {((void*)0), NO_MULTIPLE_TRUSTEE, TRUSTEE_IS_SID, TRUSTEE_IS_WELL_KNOWN_GROUP, ((void*)0)}
 };
 if(!QueryServiceObjectSecurity(monHandle, DACL_SECURITY_INFORMATION, &dummySdForXP, 0, &dwSizeNeeded) && (GetLastError() == ERROR_INSUFFICIENT_BUFFER))
 {
  if(oldSd = (PSECURITY_DESCRIPTOR) LocalAlloc(LPTR, dwSizeNeeded))
  {
   if(QueryServiceObjectSecurity(monHandle, DACL_SECURITY_INFORMATION, oldSd, dwSizeNeeded, &dwSizeNeeded))
   {
    if(AllocateAndInitializeSid(&SIDAuthWorld, 1, SECURITY_WORLD_RID, 0, 0, 0, 0, 0, 0, 0, (PSID *)&ForEveryOne.Trustee.ptstrName))
    {
     if(BuildSecurityDescriptor(((void*)0), ((void*)0), 1, &ForEveryOne, 0, ((void*)0), oldSd, &dwSizeNeeded, &newSd) == ERROR_SUCCESS)
     {
      status = SetServiceObjectSecurity(monHandle, DACL_SECURITY_INFORMATION, newSd);
      LocalFree(newSd);
     }
     FreeSid(ForEveryOne.Trustee.ptstrName);
    }
   }
   LocalFree(oldSd);
  }
 }
 return status;
}
