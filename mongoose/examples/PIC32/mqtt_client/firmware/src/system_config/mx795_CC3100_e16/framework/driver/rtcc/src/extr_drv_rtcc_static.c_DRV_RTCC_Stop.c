
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLIB_RTCC_Disable (int ) ;
 int RTCC_ID_0 ;

void DRV_RTCC_Stop(void) {
  PLIB_RTCC_Disable(RTCC_ID_0);
}
