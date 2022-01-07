
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int SCardReleaseContext (scalar_t__) ;
 int STATUS_SUCCESS ;
 int kuhl_m_acr_Comm ;
 scalar_t__ kuhl_m_acr_hContext ;
 int kull_m_acr_finish (int *) ;

NTSTATUS kuhl_m_acr_close(int argc, wchar_t * argv[])
{
 kull_m_acr_finish(&kuhl_m_acr_Comm);
 if(kuhl_m_acr_hContext)
 {
  SCardReleaseContext(kuhl_m_acr_hContext);
  kuhl_m_acr_hContext = 0;
 }
 return STATUS_SUCCESS;
}
