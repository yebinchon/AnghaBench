
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ usage; int report_id; } ;
typedef TYPE_1__ report_extra_t ;


 scalar_t__ CONSUMER2BLUEFRUIT (scalar_t__) ;
 scalar_t__ CONSUMER2RN42 (scalar_t__) ;
 int Endpoint_ClearIN () ;
 int Endpoint_IsReadWriteAllowed () ;
 int Endpoint_SelectEndpoint (int ) ;
 int Endpoint_Write_Stream_LE (TYPE_1__*,int,int *) ;
 scalar_t__ OUTPUT_BLUETOOTH ;
 scalar_t__ OUTPUT_USB ;
 scalar_t__ OUTPUT_USB_AND_BT ;
 int REPORT_ID_CONSUMER ;
 int SHARED_IN_EPNUM ;
 int _delay_us (int) ;
 int adafruit_ble_send_consumer_key (scalar_t__,int ) ;
 int bluefruit_serial_send (int) ;
 scalar_t__ where_to_send () ;

__attribute__((used)) static void send_consumer(uint16_t data) {
}
