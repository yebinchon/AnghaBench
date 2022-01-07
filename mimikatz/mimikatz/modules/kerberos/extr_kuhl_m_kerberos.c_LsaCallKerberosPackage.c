
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PVOID ;
typedef int PULONG ;
typedef int PNTSTATUS ;
typedef int NTSTATUS ;


 int LsaCallAuthenticationPackage (scalar_t__,int ,int ,int ,int *,int ,int ) ;
 int STATUS_HANDLE_NO_LONGER_VALID ;
 int g_AuthenticationPackageId_Kerberos ;
 scalar_t__ g_hLSA ;
 scalar_t__ g_isAuthPackageKerberos ;

NTSTATUS LsaCallKerberosPackage(PVOID ProtocolSubmitBuffer, ULONG SubmitBufferLength, PVOID *ProtocolReturnBuffer, PULONG ReturnBufferLength, PNTSTATUS ProtocolStatus)
{
 NTSTATUS status = STATUS_HANDLE_NO_LONGER_VALID;
 if(g_hLSA && g_isAuthPackageKerberos)
  status = LsaCallAuthenticationPackage(g_hLSA, g_AuthenticationPackageId_Kerberos, ProtocolSubmitBuffer, SubmitBufferLength, ProtocolReturnBuffer, ReturnBufferLength, ProtocolStatus);
 return status;
}
