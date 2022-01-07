
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_int64 ;
typedef int sqlite3_file ;
typedef scalar_t__ sint32_t ;
struct TYPE_2__ {int name; int cache; } ;
typedef TYPE_1__ esp8266_file ;


 int SQLITE_OK ;
 int dbg_printf (char*,int ,scalar_t__,int) ;
 int filecache_pull (int ,scalar_t__,int,void*) ;

__attribute__((used)) static int esp8266mem_Read(sqlite3_file *id, void *buffer, int amount, sqlite3_int64 offset)
{
 sint32_t ofst;
 esp8266_file *file = (esp8266_file*) id;

 ofst = (sint32_t)(offset & 0x7FFFFFFF);

 filecache_pull (file->cache, ofst, amount, buffer);

 dbg_printf("esp8266mem_Read: %s [%ld] [%d] OK\n", file->name, ofst, amount);
 return SQLITE_OK;
}
