
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {int x; int y; int v; int h; int buttons; } ;
typedef TYPE_1__ report_mouse_t ;


 int Endpoint_ClearIN () ;
 int Endpoint_IsReadWriteAllowed () ;
 int Endpoint_SelectEndpoint (int ) ;
 int Endpoint_Write_Stream_LE (TYPE_1__*,int,int *) ;
 int MOUSE_IN_EPNUM ;
 scalar_t__ OUTPUT_BLUETOOTH ;
 scalar_t__ OUTPUT_USB ;
 scalar_t__ OUTPUT_USB_AND_BT ;
 int _delay_us (int) ;
 int adafruit_ble_send_mouse_move (int,int,int,int,int) ;
 int bluefruit_serial_send (int) ;
 scalar_t__ where_to_send () ;

__attribute__((used)) static void send_mouse(report_mouse_t *report) {
}
