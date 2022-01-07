
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {char* member_1; int ** member_2; int member_0; } ;
typedef int * PWSTR ;
typedef TYPE_1__* PLDAPMod ;
typedef TYPE_1__ LDAPMod ;
typedef int LDAP ;
typedef int DWORD ;


 int LDAP_MOD_REPLACE ;
 int LocalFree (int *) ;
 int PRINT_ERROR (char*,int ,int ) ;
 scalar_t__ kull_m_string_sprintf (int **,char*,int *,int *) ;
 int ldap_modify_s (int *,char*,TYPE_1__**) ;

ULONG kuhl_m_lsadump_dcshadow_lingering_trigger(LDAP* ld, PWSTR szTargetNTDS, PWSTR szObject)
{
 DWORD dwErr;
 PWSTR szMod[] = {((void*)0), ((void*)0)};
 LDAPMod Modification = {LDAP_MOD_REPLACE , L"removeLingeringObject", szMod};
 PLDAPMod pModification[] = {&Modification, ((void*)0)};

 if(kull_m_string_sprintf(szMod, L"%s:%s", szTargetNTDS, szObject))
 {
  if (dwErr = ldap_modify_s(ld, L"", pModification))
   PRINT_ERROR(L"removeLingeringObject 0x%x (%u)\n", dwErr, dwErr);
  LocalFree(szMod[0]);
 }
 return dwErr;
}
