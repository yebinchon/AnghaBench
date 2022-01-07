
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NTSTATUS ;


 int LsaConnectUntrusted (int *) ;
 int LsaLookupAuthenticationPackage (int ,int *,int *) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int g_AuthenticationPackageId_Kerberos ;
 int g_hLSA ;
 scalar_t__ g_isAuthPackageKerberos ;
 int kerberosPackageName ;

NTSTATUS kuhl_m_kerberos_init()
{
 NTSTATUS status = LsaConnectUntrusted(&g_hLSA);
 if(NT_SUCCESS(status))
 {
  status = LsaLookupAuthenticationPackage(g_hLSA, &kerberosPackageName, &g_AuthenticationPackageId_Kerberos);
  g_isAuthPackageKerberos = NT_SUCCESS(status);
 }
 return status;
}
