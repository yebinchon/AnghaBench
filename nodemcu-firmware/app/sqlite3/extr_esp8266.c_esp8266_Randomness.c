
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vfs ;


 int SQLITE_OK ;
 int dbg_printf (char*,int) ;
 int os_get_random (char*,int) ;

__attribute__((used)) static int esp8266_Randomness( sqlite3_vfs * vfs, int len, char * buffer )
{
 int rc = os_get_random(buffer, len);
 dbg_printf("esp8266_Randomness: %d\n", rc);
 return SQLITE_OK;
}
