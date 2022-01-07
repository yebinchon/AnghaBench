
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int host_driver_t ;


 int serial_driver ;

host_driver_t* get_serial_link_driver(void) { return &serial_driver; }
