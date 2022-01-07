
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITE_OK ;
 int esp8266Vfs ;
 int sqlite3_vfs_register (int *,int) ;

int sqlite3_os_init(void){
  sqlite3_vfs_register(&esp8266Vfs, 1);
  return SQLITE_OK;
}
