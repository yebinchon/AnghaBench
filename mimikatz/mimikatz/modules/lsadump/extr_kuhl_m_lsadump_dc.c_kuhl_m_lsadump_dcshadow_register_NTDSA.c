
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PDCSHADOW_DOMAIN_INFO ;


 int kuhl_m_lsadump_dcshadow_bind_DRSR (int ,int ) ;
 int kuhl_m_lsadump_dcshadow_register_NTDSA_AddEntry ;

ULONG kuhl_m_lsadump_dcshadow_register_NTDSA(PDCSHADOW_DOMAIN_INFO info)
{
 return kuhl_m_lsadump_dcshadow_bind_DRSR(info, kuhl_m_lsadump_dcshadow_register_NTDSA_AddEntry);
}
