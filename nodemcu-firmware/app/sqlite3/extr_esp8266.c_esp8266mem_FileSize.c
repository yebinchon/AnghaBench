
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef long long sqlite3_int64 ;
typedef int sqlite3_file ;
struct TYPE_4__ {TYPE_1__* cache; int name; } ;
typedef TYPE_2__ esp8266_file ;
struct TYPE_3__ {long long size; } ;


 int SQLITE_OK ;
 int dbg_printf (char*,int ,long long) ;

__attribute__((used)) static int esp8266mem_FileSize(sqlite3_file *id, sqlite3_int64 *size)
{
 esp8266_file *file = (esp8266_file*) id;

 *size = 0LL | file->cache->size;
 dbg_printf("esp8266mem_FileSize: %s [%d] OK\n", file->name, file->cache->size);
 return SQLITE_OK;
}
