
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEVCON_ID_0 ;
 int PLIB_DEVCON_SystemUnlock (int ) ;
 int PLIB_RTCC_AlarmDateSet (int ,int) ;
 int PLIB_RTCC_AlarmDisable (int ) ;
 int PLIB_RTCC_AlarmMaskModeSelect (int ,int ) ;
 scalar_t__ PLIB_RTCC_AlarmSyncStatusGet (int ) ;
 int PLIB_RTCC_AlarmTimeSet (int ,int) ;
 scalar_t__ PLIB_RTCC_ClockRunningStatus (int ) ;
 int PLIB_RTCC_Disable (int ) ;
 int PLIB_RTCC_RTCDateSet (int ,int) ;
 int PLIB_RTCC_RTCTimeSet (int ,int) ;
 int PLIB_RTCC_WriteEnable (int ) ;
 int RTCC_ALARM_EVERY_SECOND ;
 int RTCC_ID_0 ;

void DRV_RTCC_Initialize(void) {
  PLIB_DEVCON_SystemUnlock(DEVCON_ID_0);


  PLIB_RTCC_WriteEnable(RTCC_ID_0);
  PLIB_RTCC_Disable(RTCC_ID_0);
  while (PLIB_RTCC_ClockRunningStatus(RTCC_ID_0))
    ;
  PLIB_RTCC_RTCTimeSet(RTCC_ID_0, 0x23595900);
  PLIB_RTCC_RTCDateSet(RTCC_ID_0, 0x14010100);
  PLIB_RTCC_AlarmDisable(RTCC_ID_0);
  while (PLIB_RTCC_AlarmSyncStatusGet(RTCC_ID_0))
    ;
  PLIB_RTCC_AlarmTimeSet(RTCC_ID_0, 0x00000500);
  PLIB_RTCC_AlarmDateSet(RTCC_ID_0, 0x00010100);
  PLIB_RTCC_AlarmMaskModeSelect(
      RTCC_ID_0, RTCC_ALARM_EVERY_SECOND);
}
