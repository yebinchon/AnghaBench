
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_2__ {int name; int cache; } ;
typedef TYPE_1__ esp8266_file ;


 int SQLITE_OK ;
 int dbg_printf (char*,int ) ;
 int filecache_free (int ) ;
 int sqlite3_free (int ) ;

__attribute__((used)) static int esp8266mem_Close(sqlite3_file *id)
{
 esp8266_file *file = (esp8266_file*) id;

 filecache_free(file->cache);
 sqlite3_free (file->cache);

 dbg_printf("esp8266mem_Close: %s OK\n", file->name);
 return SQLITE_OK;
}
