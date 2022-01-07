
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLIB_RTCC_Enable (int ) ;
 int RTCC_ID_0 ;

void DRV_RTCC_Start(void) {
  PLIB_RTCC_Enable(RTCC_ID_0);
}
