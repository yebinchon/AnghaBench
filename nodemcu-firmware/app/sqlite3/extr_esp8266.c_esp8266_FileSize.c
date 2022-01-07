
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long long sqlite3_int64 ;
typedef int sqlite3_file ;
struct TYPE_2__ {int fd; int name; } ;
typedef TYPE_1__ esp8266_file ;


 int SQLITE_OK ;
 int dbg_printf (char*,int ,long long,long long) ;
 long long vfs_size (int ) ;

__attribute__((used)) static int esp8266_FileSize(sqlite3_file *id, sqlite3_int64 *size)
{
 esp8266_file *file = (esp8266_file*) id;
 *size = 0LL | vfs_size( file->fd );
 dbg_printf("esp8266_FileSize: %s %u[%lld]\n", file->name, vfs_size(file->fd), *size);
 return SQLITE_OK;
}
