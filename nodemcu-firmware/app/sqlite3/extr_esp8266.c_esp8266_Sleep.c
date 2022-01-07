
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vfs ;


 int SQLITE_OK ;
 int dbg_printf (char*) ;

__attribute__((used)) static int esp8266_Sleep( sqlite3_vfs * vfs, int microseconds )
{
 dbg_printf("esp8266_Sleep:\n");
 return SQLITE_OK;
}
