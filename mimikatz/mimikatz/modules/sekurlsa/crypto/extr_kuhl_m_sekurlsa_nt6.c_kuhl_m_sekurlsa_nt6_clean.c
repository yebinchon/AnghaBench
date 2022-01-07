
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NTSTATUS ;


 scalar_t__ NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int kuhl_m_sekurlsa_nt6_KeyInit ;
 int kuhl_m_sekurlsa_nt6_LsaCleanupProtectedMemory () ;

NTSTATUS kuhl_m_sekurlsa_nt6_clean()
{
 if(NT_SUCCESS(kuhl_m_sekurlsa_nt6_KeyInit))
  kuhl_m_sekurlsa_nt6_LsaCleanupProtectedMemory();
 return STATUS_SUCCESS;
}
