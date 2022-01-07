
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vfs ;


 int dbg_printf (char*) ;

__attribute__((used)) static void ( * esp8266_DlSym ( sqlite3_vfs * vfs, void * handle, const char * symbol ) ) ( void )
{
 dbg_printf("esp8266_DlSym:\n");
 return ((void*)0);
}
