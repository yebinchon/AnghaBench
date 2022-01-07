
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int kuhl_m_sekurlsa_getLogonData (int ,int) ;
 int kuhl_m_sekurlsa_livessp_single_package ;

NTSTATUS kuhl_m_sekurlsa_livessp(int argc, wchar_t * argv[])
{
 return kuhl_m_sekurlsa_getLogonData(kuhl_m_sekurlsa_livessp_single_package, 1);
}
