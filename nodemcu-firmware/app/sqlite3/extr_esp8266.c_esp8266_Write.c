
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_int64 ;
typedef int sqlite3_file ;
typedef scalar_t__ sint32_t ;
struct TYPE_2__ {int name; int fd; } ;
typedef TYPE_1__ esp8266_file ;


 int SQLITE_IOERR_SEEK ;
 int SQLITE_IOERR_WRITE ;
 int SQLITE_OK ;
 int VFS_SEEK_SET ;
 int dbg_printf (char*,int ,...) ;
 scalar_t__ vfs_lseek (int ,scalar_t__,int ) ;
 size_t vfs_write (int ,void const*,int) ;

__attribute__((used)) static int esp8266_Write(sqlite3_file *id, const void *buffer, int amount, sqlite3_int64 offset)
{
 size_t nWrite;
 sint32_t ofst, iofst;
 esp8266_file *file = (esp8266_file*) id;

 iofst = (sint32_t)(offset & 0x7FFFFFFF);

 dbg_printf("esp8266_Write: 1w %s %d %d %lld[%ld] \n", file->name, file->fd, amount, offset, iofst);
 ofst = vfs_lseek(file->fd, iofst, VFS_SEEK_SET);
 if (ofst != iofst) {
  return SQLITE_IOERR_SEEK;
 }

 nWrite = vfs_write(file->fd, buffer, amount);
 if ( nWrite != amount ) {
  dbg_printf("esp8266_Write: 2w %s %u %d\n", file->name, nWrite, amount);
  return SQLITE_IOERR_WRITE;
 }

 dbg_printf("esp8266_Write: 3w %s OK\n", file->name);
 return SQLITE_OK;
}
