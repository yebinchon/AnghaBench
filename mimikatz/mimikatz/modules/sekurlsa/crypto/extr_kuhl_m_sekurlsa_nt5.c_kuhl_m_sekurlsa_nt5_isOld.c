
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ KULL_M_WIN_BUILD_2K3 ;
 int TRUE ;

BOOL kuhl_m_sekurlsa_nt5_isOld(DWORD osBuildNumber, DWORD moduleTimeStamp)
{
 BOOL status = FALSE;
 if(osBuildNumber == KULL_M_WIN_BUILD_2K3)
 {
  if(moduleTimeStamp == 0x49901640)
   status = TRUE;
  else if(moduleTimeStamp <= 0x45d70a62)
   status = TRUE;
 }
 return status;
}
