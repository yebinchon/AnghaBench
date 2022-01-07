
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int serial_delay () ;
 int serial_high () ;
 int serial_low () ;
 int serial_output () ;

__attribute__((used)) static
void sync_send(void) {
  serial_output();

  serial_low();
  serial_delay();

  serial_high();
}
