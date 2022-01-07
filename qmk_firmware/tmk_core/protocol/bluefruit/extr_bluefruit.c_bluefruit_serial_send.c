
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int debug_hex8 (int ) ;
 int dprintf (char*) ;
 int serial_send (int ) ;

__attribute__((used)) static void bluefruit_serial_send(uint8_t data) {





    serial_send(data);
}
