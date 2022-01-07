
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_2__ {int fd; } ;
typedef TYPE_1__ esp8266_file ;


 int SQLITE_IOERR_FSYNC ;
 int SQLITE_OK ;
 int dbg_printf (char*,int) ;
 int vfs_flush (int ) ;

__attribute__((used)) static int esp8266_Sync(sqlite3_file *id, int flags)
{
 esp8266_file *file = (esp8266_file*) id;

 int rc = vfs_flush( file->fd );
 dbg_printf("esp8266_Sync: %d\n", rc);

 return rc ? SQLITE_IOERR_FSYNC : SQLITE_OK;
}
