
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 scalar_t__ CONSUMER2BLUEFRUIT (scalar_t__) ;
 int bluefruit_serial_send (int) ;
 int bluefruit_trace_footer () ;
 int bluefruit_trace_header () ;
 int debug_hex16 (scalar_t__) ;
 int dprintf (char*) ;

__attribute__((used)) static void send_consumer(uint16_t data) {
    static uint16_t last_data = 0;
    if (data == last_data) return;
    last_data = data;

    uint16_t bitmap = CONSUMER2BLUEFRUIT(data);
    bluefruit_serial_send(0xFD);
    bluefruit_serial_send(0x00);
    bluefruit_serial_send(0x02);
    bluefruit_serial_send((bitmap >> 8) & 0xFF);
    bluefruit_serial_send(bitmap & 0xFF);
    bluefruit_serial_send(0x00);
    bluefruit_serial_send(0x00);
    bluefruit_serial_send(0x00);
    bluefruit_serial_send(0x00);



}
