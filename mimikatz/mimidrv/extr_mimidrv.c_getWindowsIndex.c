
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KIWI_OS_INDEX ;


 int KiwiOsIndex_10_1507 ;
 int KiwiOsIndex_10_1511 ;
 int KiwiOsIndex_10_1607 ;
 int KiwiOsIndex_10_1703 ;
 int KiwiOsIndex_10_1709 ;
 int KiwiOsIndex_10_1803 ;
 int KiwiOsIndex_10_1809 ;
 int KiwiOsIndex_10_1903 ;
 int KiwiOsIndex_2K3 ;
 int KiwiOsIndex_7 ;
 int KiwiOsIndex_8 ;
 int KiwiOsIndex_BLUE ;
 int KiwiOsIndex_UNK ;
 int KiwiOsIndex_VISTA ;
 int KiwiOsIndex_XP ;
 int* NtBuildNumber ;

KIWI_OS_INDEX getWindowsIndex()
{
 if(*NtBuildNumber > 18362)
  return KiwiOsIndex_10_1903;

 switch(*NtBuildNumber)
 {
  case 2600:
   return KiwiOsIndex_XP;
   break;
  case 3790:
   return KiwiOsIndex_2K3;
   break;
  case 6000:
  case 6001:
  case 6002:
   return KiwiOsIndex_VISTA;
   break;
  case 7600:
  case 7601:
   return KiwiOsIndex_7;
   break;
  case 8102:
  case 8250:
  case 9200:
   return KiwiOsIndex_8;
  case 9431:
  case 9600:
   return KiwiOsIndex_BLUE;
   break;
  case 10240:
   return KiwiOsIndex_10_1507;
   break;
  case 10586:
   return KiwiOsIndex_10_1511;
   break;
  case 14393:
   return KiwiOsIndex_10_1607;
   break;
  case 15063:
   return KiwiOsIndex_10_1703;
   break;
  case 16299:
   return KiwiOsIndex_10_1709;
   break;
  case 17134:
   return KiwiOsIndex_10_1803;
   break;
  case 17763:
   return KiwiOsIndex_10_1809;
   break;
  case 18362:
   return KiwiOsIndex_10_1903;
   break;
  default:
   return KiwiOsIndex_UNK;
 }
}
