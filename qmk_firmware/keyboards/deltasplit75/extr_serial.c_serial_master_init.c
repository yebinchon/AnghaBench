
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int serial_high () ;
 int serial_output () ;

void serial_master_init(void) {
  serial_output();
  serial_high();
}
