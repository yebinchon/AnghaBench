
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_3__ {int Attributes; int Sid; } ;
typedef int PWSTR ;
typedef TYPE_1__* PSID_AND_ATTRIBUTES ;
typedef size_t DWORD ;


 int LocalFree (int ) ;
 int SE_GROUP_ENABLED ;
 int SE_GROUP_ENABLED_BY_DEFAULT ;
 int SE_GROUP_LOGON_ID ;
 int SE_GROUP_MANDATORY ;
 int SE_GROUP_OWNER ;
 int SE_GROUP_RESOURCE ;
 int SE_GROUP_USE_FOR_DENY_ONLY ;
 int kprintf (char*,...) ;
 int kull_m_string_displaySID (int ) ;
 scalar_t__ kull_m_token_getNameDomainFromSID (int ,int *,int *,int *,int *) ;
 scalar_t__ lstrlen (int ) ;

void kuhl_m_token_displayAccount_sids(UCHAR l, DWORD count, PSID_AND_ATTRIBUTES sids)
{
 DWORD i;
 PWSTR name, domainName;
 for(i = 0; i < count; i++)
 {
  kprintf(L"   %c:[%c%c%c%c%c%c%c] ", l,
    (sids[i].Attributes & SE_GROUP_MANDATORY) ? L'M' : L' ',
    (sids[i].Attributes & SE_GROUP_ENABLED_BY_DEFAULT) ? L'D' : L' ',
    (sids[i].Attributes & SE_GROUP_ENABLED) ? L'E' : L' ',
    (sids[i].Attributes & SE_GROUP_OWNER) ? L'O' : L' ',
    (sids[i].Attributes & SE_GROUP_USE_FOR_DENY_ONLY) ? L'U' : L' ',
    (sids[i].Attributes & SE_GROUP_LOGON_ID) ? L'L' : L' ',
    (sids[i].Attributes & SE_GROUP_RESOURCE) ? L'R' : L' '
    );
  if(kull_m_token_getNameDomainFromSID(sids[i].Sid, &name, &domainName, ((void*)0), ((void*)0)))
  {
   if(lstrlen(domainName))
    kprintf(L"%s\\", domainName);
   kprintf(L"%s\n", name);
   LocalFree(name);
   LocalFree(domainName);
  }
  else
  {
   kull_m_string_displaySID(sids[i].Sid);
   kprintf(L"\n");
  }
 }
}
