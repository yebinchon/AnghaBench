
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NTSTATUS ;


 int NT_SUCCESS (int ) ;
 int kuhl_m_sekurlsa_nt5_KeyInit ;
 int kuhl_m_sekurlsa_nt5_LsaInitializeProtectedMemory () ;

NTSTATUS kuhl_m_sekurlsa_nt5_init()
{
 if(!NT_SUCCESS(kuhl_m_sekurlsa_nt5_KeyInit))
  kuhl_m_sekurlsa_nt5_KeyInit = kuhl_m_sekurlsa_nt5_LsaInitializeProtectedMemory();
 return kuhl_m_sekurlsa_nt5_KeyInit;
}
