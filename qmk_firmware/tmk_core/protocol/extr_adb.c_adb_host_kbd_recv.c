
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int ADDR_KEYB ;
 int adb_host_dev_recv (int ) ;

uint16_t adb_host_kbd_recv(void) { return adb_host_dev_recv(ADDR_KEYB); }
