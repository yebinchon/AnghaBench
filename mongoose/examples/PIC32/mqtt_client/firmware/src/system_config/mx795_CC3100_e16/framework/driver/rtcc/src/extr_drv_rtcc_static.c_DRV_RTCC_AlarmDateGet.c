
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int PLIB_RTCC_AlarmDateGet (int ) ;
 int RTCC_ID_0 ;

uint32_t DRV_RTCC_AlarmDateGet(void) {
  return PLIB_RTCC_AlarmDateGet(RTCC_ID_0);
}
