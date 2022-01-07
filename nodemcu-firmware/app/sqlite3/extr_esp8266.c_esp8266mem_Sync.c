
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_2__ {int name; } ;
typedef TYPE_1__ esp8266_file ;


 int SQLITE_OK ;
 int dbg_printf (char*,int ) ;

__attribute__((used)) static int esp8266mem_Sync(sqlite3_file *id, int flags)
{
 esp8266_file *file = (esp8266_file*) id;
 dbg_printf("esp8266mem_Sync: %s OK\n", file->name);
 return SQLITE_OK;
}
