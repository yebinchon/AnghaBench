
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADB_DATA_BIT ;
 int ADB_PORT ;
 int data_hi () ;
 int psw_hi () ;

void adb_host_init(void) {
    ADB_PORT &= ~(1 << ADB_DATA_BIT);
    data_hi();



}
