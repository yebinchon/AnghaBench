
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_file ;
struct TYPE_2__ {int busyTimeout; int pVfs; } ;
typedef TYPE_1__ sqlite3 ;


 int NDELAY ;
 int SQLITE_FCNTL_LOCK_TIMEOUT ;
 scalar_t__ SQLITE_OK ;
 int UNUSED_PARAMETER (int *) ;
 int assert (int) ;
 scalar_t__ sqlite3OsFileControl (int *,int ,int*) ;
 int sqlite3OsSleep (int ,int) ;

__attribute__((used)) static int sqliteDefaultBusyCallback(
  void *ptr,
  int count,
  sqlite3_file *pFile
){
  sqlite3 *db = (sqlite3 *)ptr;
  int tmout = ((sqlite3 *)ptr)->busyTimeout;
  UNUSED_PARAMETER(pFile);
  if( (count+1)*1000 > tmout ){
    return 0;
  }
  sqlite3OsSleep(db->pVfs, 1000000);
  return 1;

}
