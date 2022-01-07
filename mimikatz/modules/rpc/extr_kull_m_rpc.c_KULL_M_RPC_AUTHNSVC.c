
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCWSTR ;
typedef int DWORD ;







LPCWSTR KULL_M_RPC_AUTHNSVC(DWORD AuthnSvc)
{
 LPCWSTR szAuthnSvc;
 switch(AuthnSvc)
 {
 case 129:
  szAuthnSvc = L"NONE";
  break;
 case 130:
  szAuthnSvc = L"GSS_NEGOTIATE";
  break;
 case 128:
  szAuthnSvc = L"WINNT";
  break;
 case 131:
  szAuthnSvc = L"GSS_KERBEROS";
  break;
 default:
  szAuthnSvc = L"?";
 }
 return szAuthnSvc;
}
