
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vfs ;


 int dbg_printf (char*) ;

__attribute__((used)) static void esp8266_DlClose( sqlite3_vfs * vfs, void * handle )
{
 dbg_printf("esp8266_DlClose:\n");
 return;
}
