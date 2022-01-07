
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vfs ;


 int SQLITE_OK ;
 int dbg_printf (char*,double) ;

__attribute__((used)) static int esp8266_CurrentTime( sqlite3_vfs * vfs, double * result )
{




 *result = 2440587.5;
 dbg_printf("esp8266_CurrentTime: %g\n", *result);
 return SQLITE_OK;
}
