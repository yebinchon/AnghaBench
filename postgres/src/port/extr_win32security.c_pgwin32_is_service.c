
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ SID_IDENTIFIER_AUTHORITY ;
typedef int PSID ;
typedef scalar_t__ BOOL ;


 int AllocateAndInitializeSid (TYPE_1__*,int,int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 int CheckTokenMembership (int *,int ,scalar_t__*) ;
 int FreeSid (int ) ;
 int GetLastError () ;
 int SECURITY_LOCAL_SYSTEM_RID ;
 int SECURITY_NT_AUTHORITY ;
 int SECURITY_SERVICE_RID ;
 int fprintf (int ,char*,...) ;
 int stderr ;

int
pgwin32_is_service(void)
{
 static int _is_service = -1;
 BOOL IsMember;
 PSID ServiceSid;
 PSID LocalSystemSid;
 SID_IDENTIFIER_AUTHORITY NtAuthority = {SECURITY_NT_AUTHORITY};


 if (_is_service != -1)
  return _is_service;


 if (!AllocateAndInitializeSid(&NtAuthority, 1,
          SECURITY_LOCAL_SYSTEM_RID, 0, 0, 0, 0, 0, 0, 0,
          &LocalSystemSid))
 {
  fprintf(stderr, "could not get SID for local system account\n");
  return -1;
 }

 if (!CheckTokenMembership(((void*)0), LocalSystemSid, &IsMember))
 {
  fprintf(stderr, "could not check access token membership: error code %lu\n",
    GetLastError());
  FreeSid(LocalSystemSid);
  return -1;
 }
 FreeSid(LocalSystemSid);

 if (IsMember)
 {
  _is_service = 1;
  return _is_service;
 }


 if (!AllocateAndInitializeSid(&NtAuthority, 1,
          SECURITY_SERVICE_RID, 0, 0, 0, 0, 0, 0, 0,
          &ServiceSid))
 {
  fprintf(stderr, "could not get SID for service group: error code %lu\n",
    GetLastError());
  return -1;
 }

 if (!CheckTokenMembership(((void*)0), ServiceSid, &IsMember))
 {
  fprintf(stderr, "could not check access token membership: error code %lu\n",
    GetLastError());
  FreeSid(ServiceSid);
  return -1;
 }
 FreeSid(ServiceSid);

 if (IsMember)
  _is_service = 1;
 else
  _is_service = 0;

 return _is_service;
}
