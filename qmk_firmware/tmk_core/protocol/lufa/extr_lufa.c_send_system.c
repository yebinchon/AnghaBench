
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_3__ {int usage; int report_id; } ;
typedef TYPE_1__ report_extra_t ;


 scalar_t__ DEVICE_STATE_Configured ;
 int Endpoint_ClearIN () ;
 int Endpoint_IsReadWriteAllowed () ;
 int Endpoint_SelectEndpoint (int ) ;
 int Endpoint_Write_Stream_LE (TYPE_1__*,int,int *) ;
 int REPORT_ID_SYSTEM ;
 int SHARED_IN_EPNUM ;
 scalar_t__ SYSTEM_POWER_DOWN ;
 scalar_t__ USB_DeviceState ;
 int _delay_us (int) ;

__attribute__((used)) static void send_system(uint16_t data) {
}
