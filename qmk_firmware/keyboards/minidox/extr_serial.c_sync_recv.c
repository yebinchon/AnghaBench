
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int serial_delay () ;
 int serial_input () ;
 int serial_read_pin () ;

__attribute__((used)) static
void sync_recv(void) {
  serial_input();


  while (!serial_read_pin());
  serial_delay();
}
