
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SYS_PORTS_PULLUP_PULLDOWN_STATUS ;
typedef int PORTS_MODULE_ID ;
typedef int PORTS_CHANGE_NOTICE_PIN ;


 int PLIB_PORTS_ChangeNoticePullUpDisable (int ,int ) ;
 int PLIB_PORTS_ChangeNoticePullUpEnable (int ,int ) ;
 scalar_t__ PLIB_PORTS_ExistsChangeNoticePullUp (int ) ;
 scalar_t__ PLIB_PORTS_ExistsPinChangeNotice (int ) ;
 int PLIB_PORTS_PinChangeNoticeEnable (int ,int ) ;



void SYS_PORTS_ChangeNotificationEnable( PORTS_MODULE_ID index,
                                         PORTS_CHANGE_NOTICE_PIN pinNum,
                                         SYS_PORTS_PULLUP_PULLDOWN_STATUS value )
{
}
