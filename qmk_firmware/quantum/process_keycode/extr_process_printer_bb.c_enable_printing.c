
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printing_enabled ;
 int serial_high () ;
 int serial_output () ;

void enable_printing() {
    printing_enabled = 1;
    serial_output();
    serial_high();
}
