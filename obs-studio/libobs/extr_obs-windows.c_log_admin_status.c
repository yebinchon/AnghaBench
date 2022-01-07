
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SID_IDENTIFIER_AUTHORITY ;
typedef int PSID ;
typedef int BOOL ;


 int AllocateAndInitializeSid (int *,int,int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 int CheckTokenMembership (int *,int ,int*) ;
 int DOMAIN_ALIAS_RID_ADMINS ;
 int FreeSid (int ) ;
 int LOG_INFO ;
 int SECURITY_BUILTIN_DOMAIN_RID ;
 int SECURITY_NT_AUTHORITY ;
 int blog (int ,char*,char*) ;

__attribute__((used)) static void log_admin_status(void)
{
 SID_IDENTIFIER_AUTHORITY auth = SECURITY_NT_AUTHORITY;
 PSID admin_group;
 BOOL success;

 success = AllocateAndInitializeSid(&auth, 2,
        SECURITY_BUILTIN_DOMAIN_RID,
        DOMAIN_ALIAS_RID_ADMINS, 0, 0, 0, 0,
        0, 0, &admin_group);
 if (success) {
  if (!CheckTokenMembership(((void*)0), admin_group, &success))
   success = 0;
  FreeSid(admin_group);
 }

 blog(LOG_INFO, "Running as administrator: %s",
      success ? "true" : "false");
}
