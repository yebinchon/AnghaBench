
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCWSTR ;
typedef int DWORD ;
LPCWSTR kuhl_m_lsadump_samAccountType_toString(DWORD accountType)
{
 LPCWSTR target;
 switch(accountType)
 {
 case 134:
  target = L"DOMAIN_OBJECT";
  break;
 case 133:
  target = L"GROUP_OBJECT";
  break;
 case 130:
  target = L"NON_SECURITY_GROUP_OBJECT";
  break;
 case 137:
  target = L"ALIAS_OBJECT";
  break;
 case 131:
  target = L"NON_SECURITY_ALIAS_OBJECT";
  break;
 case 128:
  target = L"USER_OBJECT";
  break;
 case 132:
  target = L"MACHINE_ACCOUNT";
  break;
 case 129:
  target = L"TRUST_ACCOUNT";
  break;
 case 136:
  target = L"APP_BASIC_GROUP";
  break;
 case 135:
  target = L"APP_QUERY_GROUP";
  break;
 default:
  target = L"unknown";
 }
 return target;
}
