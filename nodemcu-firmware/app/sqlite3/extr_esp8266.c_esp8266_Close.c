
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_2__ {int fd; int name; } ;
typedef TYPE_1__ esp8266_file ;


 int SQLITE_IOERR_CLOSE ;
 int SQLITE_OK ;
 int dbg_printf (char*,int ,int ,int) ;
 int vfs_close (int ) ;

__attribute__((used)) static int esp8266_Close(sqlite3_file *id)
{
 esp8266_file *file = (esp8266_file*) id;

 int rc = vfs_close(file->fd);
 dbg_printf("esp8266_Close: %s %d %d\n", file->name, file->fd, rc);
 return rc ? SQLITE_IOERR_CLOSE : SQLITE_OK;
}
